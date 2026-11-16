import 'dart:convert';
import 'dart:typed_data';

/// Bir çalışma sayfası. [header] ilk satırdır (kalın ve sabitlenmiş).
class XlsxSheet {
  const XlsxSheet(this.name, this.header, this.rows, {this.widths = const []});
  final String name;
  final List<String> header;
  final List<List<String>> rows;

  /// Sütun genişlikleri (karakter); eksik olanlar [defaultWidth] olur.
  final List<double> widths;
  static const defaultWidth = 22.0;
}

/// Bağımlılıksız, en küçük .xlsx üretici.
/// Tüm hücreler metin olarak yazılır: IBAN ve kart numarası gibi değerlerin
/// başındaki sıfırlar ve uzun rakamlar bozulmaz, "=" ile başlayan bir değer
/// formül olarak çalışmaz.
class XlsxWriter {
  const XlsxWriter._();

  static const _xml = '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n';
  static const _ns = 'http://schemas.openxmlformats.org';

  static Uint8List build(List<XlsxSheet> sheets, {bool rtl = false}) {
    assert(sheets.isNotEmpty);
    final names = _sheetNames(sheets.map((s) => s.name).toList());
    final n = sheets.length;
    final files = <String, List<int>>{
      '[Content_Types].xml': utf8.encode(_contentTypes(n)),
      '_rels/.rels': utf8.encode(_rootRels()),
      'xl/workbook.xml': utf8.encode(_workbook(names)),
      'xl/_rels/workbook.xml.rels': utf8.encode(_workbookRels(n)),
      'xl/styles.xml': utf8.encode(_styles()),
    };
    for (var i = 0; i < n; i++) {
      files['xl/worksheets/sheet${i + 1}.xml'] = utf8.encode(
        _sheet(sheets[i], rtl),
      );
    }
    return _zip(files);
  }

  static String _contentTypes(int n) {
    final b = StringBuffer(_xml)
      ..write('<Types xmlns="$_ns/package/2006/content-types">')
      ..write(
        '<Default Extension="rels" ContentType="application/'
        'vnd.openxmlformats-package.relationships+xml"/>',
      )
      ..write('<Default Extension="xml" ContentType="application/xml"/>')
      ..write(
        '<Override PartName="/xl/workbook.xml" ContentType="application/'
        'vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml"/>',
      )
      ..write(
        '<Override PartName="/xl/styles.xml" ContentType="application/'
        'vnd.openxmlformats-officedocument.spreadsheetml.styles+xml"/>',
      );
    for (var i = 1; i <= n; i++) {
      b.write(
        '<Override PartName="/xl/worksheets/sheet$i.xml" '
        'ContentType="application/'
        'vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml"/>',
      );
    }
    b.write('</Types>');
    return b.toString();
  }

  static String _rootRels() =>
      '$_xml<Relationships xmlns="$_ns/package/2006/relationships">'
      '<Relationship Id="rId1" '
      'Type="$_ns/officeDocument/2006/relationships/officeDocument" '
      'Target="xl/workbook.xml"/></Relationships>';

  static String _workbook(List<String> names) {
    final b = StringBuffer(_xml)
      ..write(
        '<workbook xmlns="$_ns/spreadsheetml/2006/main" '
        'xmlns:r="$_ns/officeDocument/2006/relationships"><sheets>',
      );
    for (var i = 0; i < names.length; i++) {
      b.write(
        '<sheet name="${_esc(names[i])}" sheetId="${i + 1}" r:id="rId${i + 1}"/>',
      );
    }
    b.write('</sheets></workbook>');
    return b.toString();
  }

  static String _workbookRels(int n) {
    final b = StringBuffer(_xml)
      ..write('<Relationships xmlns="$_ns/package/2006/relationships">');
    for (var i = 1; i <= n; i++) {
      b.write(
        '<Relationship Id="rId$i" '
        'Type="$_ns/officeDocument/2006/relationships/worksheet" '
        'Target="worksheets/sheet$i.xml"/>',
      );
    }
    b.write(
      '<Relationship Id="rId${n + 1}" '
      'Type="$_ns/officeDocument/2006/relationships/styles" '
      'Target="styles.xml"/></Relationships>',
    );
    return b.toString();
  }

  /// 0: varsayılan, 1: kalın başlık, 2: metin biçimli, üste hizalı, kaydırmalı.
  static String _styles() =>
      '$_xml<styleSheet xmlns="$_ns/spreadsheetml/2006/main">'
      '<fonts count="2"><font><sz val="11"/><name val="Calibri"/></font>'
      '<font><b/><sz val="11"/><name val="Calibri"/></font></fonts>'
      '<fills count="2"><fill><patternFill patternType="none"/></fill>'
      '<fill><patternFill patternType="gray125"/></fill></fills>'
      '<borders count="1"><border><left/><right/><top/><bottom/><diagonal/>'
      '</border></borders>'
      '<cellStyleXfs count="1"><xf numFmtId="0" fontId="0" fillId="0" '
      'borderId="0"/></cellStyleXfs>'
      '<cellXfs count="3">'
      '<xf numFmtId="0" fontId="0" fillId="0" borderId="0" xfId="0"/>'
      '<xf numFmtId="49" fontId="1" fillId="0" borderId="0" xfId="0" '
      'applyFont="1" applyNumberFormat="1"/>'
      '<xf numFmtId="49" fontId="0" fillId="0" borderId="0" xfId="0" '
      'applyNumberFormat="1" applyAlignment="1">'
      '<alignment vertical="top" wrapText="1"/></xf>'
      '</cellXfs>'
      '<cellStyles count="1"><cellStyle name="Normal" xfId="0" builtinId="0"/>'
      '</cellStyles></styleSheet>';

  static String _sheet(XlsxSheet s, bool rtl) {
    final b = StringBuffer(_xml)
      ..write('<worksheet xmlns="$_ns/spreadsheetml/2006/main">')
      ..write('<sheetViews><sheetView workbookViewId="0"')
      ..write(rtl ? ' rightToLeft="1">' : '>')
      ..write(
        '<pane ySplit="1" topLeftCell="A2" activePane="bottomLeft" '
        'state="frozen"/></sheetView></sheetViews>',
      );
    if (s.header.isNotEmpty) {
      b.write('<cols>');
      for (var i = 0; i < s.header.length; i++) {
        final w = i < s.widths.length ? s.widths[i] : XlsxSheet.defaultWidth;
        b.write('<col min="${i + 1}" max="${i + 1}" width="$w" customWidth="1"/>');
      }
      b.write('</cols>');
    }
    b.write('<sheetData>');
    _row(b, 1, s.header, 1);
    for (var r = 0; r < s.rows.length; r++) {
      _row(b, r + 2, s.rows[r], 2);
    }
    b.write('</sheetData></worksheet>');
    return b.toString();
  }

  static void _row(StringBuffer b, int r, List<String> cells, int style) {
    b.write('<row r="$r">');
    for (var c = 0; c < cells.length; c++) {
      final v = cells[c];
      if (v.isEmpty) continue;
      b.write(
        '<c r="${_col(c)}$r" t="inlineStr" s="$style"><is>'
        '<t xml:space="preserve">${_esc(v)}</t></is></c>',
      );
    }
    b.write('</row>');
  }

  /// 0 → A, 25 → Z, 26 → AA
  static String _col(int i) {
    var n = i + 1;
    var out = '';
    while (n > 0) {
      final m = (n - 1) % 26;
      out = String.fromCharCode(65 + m) + out;
      n = (n - 1) ~/ 26;
    }
    return out;
  }

  /// XML'e uygun olmayan denetim karakterlerini atar, özel karakterleri kaçırır.
  /// Excel'in hücre sınırı olan 32767 karakteri aşan metin kesilir.
  static String _esc(String s) {
    final b = StringBuffer();
    var len = 0;
    for (final r in s.runes) {
      final ok =
          r == 0x9 ||
          r == 0xA ||
          r == 0xD ||
          (r >= 0x20 && r <= 0xD7FF) ||
          (r >= 0xE000 && r <= 0xFFFD) ||
          (r >= 0x10000 && r <= 0x10FFFF);
      if (!ok) continue;
      len += r > 0xFFFF ? 2 : 1;
      if (len > 32767) break;
      switch (r) {
        case 0x26:
          b.write('&amp;');
        case 0x3C:
          b.write('&lt;');
        case 0x3E:
          b.write('&gt;');
        case 0x22:
          b.write('&quot;');
        default:
          b.writeCharCode(r);
      }
    }
    return b.toString();
  }

  /// Sayfa adları: en çok 31 karakter, : \ / ? * [ ] yok, boş değil, tekil.
  static List<String> _sheetNames(List<String> raw) {
    final used = <String>{};
    final out = <String>[];
    for (var i = 0; i < raw.length; i++) {
      var base = raw[i].replaceAll(RegExp(r'[:\\/?*\[\]]'), ' ').trim();
      if (base.isEmpty) base = 'Sheet${i + 1}';
      if (base.length > 31) base = base.substring(0, 31).trim();
      var name = base;
      var k = 2;
      while (!used.add(name.toLowerCase())) {
        final suffix = ' ($k)';
        final cut = base.length + suffix.length > 31
            ? base.substring(0, 31 - suffix.length)
            : base;
        name = '$cut$suffix';
        k++;
      }
      out.add(name);
    }
    return out;
  }

  // --- Sıkıştırmasız ZIP (xlsx bir ZIP paketidir) ---

  static final List<int> _crcTable = List<int>.generate(256, (n) {
    var c = n;
    for (var k = 0; k < 8; k++) {
      c = (c & 1) != 0 ? 0xEDB88320 ^ (c >> 1) : c >> 1;
    }
    return c;
  });

  static int _crc32(List<int> data) {
    var c = 0xFFFFFFFF;
    for (final byte in data) {
      c = _crcTable[(c ^ byte) & 0xFF] ^ (c >> 8);
    }
    return (c ^ 0xFFFFFFFF) & 0xFFFFFFFF;
  }

  static Uint8List _zip(Map<String, List<int>> files) {
    const le = Endian.little;
    final out = BytesBuilder(copy: false);
    final central = BytesBuilder(copy: false);
    final now = DateTime.now();
    final time = (now.hour << 11) | (now.minute << 5) | (now.second ~/ 2);
    final date = ((now.year - 1980) << 9) | (now.month << 5) | now.day;
    var offset = 0;
    var count = 0;
    files.forEach((name, data) {
      final nameBytes = utf8.encode(name);
      final crc = _crc32(data);
      final local = ByteData(30)
        ..setUint32(0, 0x04034b50, le)
        ..setUint16(4, 20, le)
        ..setUint16(6, 0, le)
        ..setUint16(8, 0, le)
        ..setUint16(10, time, le)
        ..setUint16(12, date, le)
        ..setUint32(14, crc, le)
        ..setUint32(18, data.length, le)
        ..setUint32(22, data.length, le)
        ..setUint16(26, nameBytes.length, le)
        ..setUint16(28, 0, le);
      out
        ..add(local.buffer.asUint8List())
        ..add(nameBytes)
        ..add(data);
      final dir = ByteData(46)
        ..setUint32(0, 0x02014b50, le)
        ..setUint16(4, 20, le)
        ..setUint16(6, 20, le)
        ..setUint16(8, 0, le)
        ..setUint16(10, 0, le)
        ..setUint16(12, time, le)
        ..setUint16(14, date, le)
        ..setUint32(16, crc, le)
        ..setUint32(20, data.length, le)
        ..setUint32(24, data.length, le)
        ..setUint16(28, nameBytes.length, le)
        ..setUint16(30, 0, le)
        ..setUint16(32, 0, le)
        ..setUint16(34, 0, le)
        ..setUint16(36, 0, le)
        ..setUint32(38, 0, le)
        ..setUint32(42, offset, le);
      central
        ..add(dir.buffer.asUint8List())
        ..add(nameBytes);
      offset += 30 + nameBytes.length + data.length;
      count++;
    });
    final dirBytes = central.takeBytes();
    final end = ByteData(22)
      ..setUint32(0, 0x06054b50, le)
      ..setUint16(4, 0, le)
      ..setUint16(6, 0, le)
      ..setUint16(8, count, le)
      ..setUint16(10, count, le)
      ..setUint32(12, dirBytes.length, le)
      ..setUint32(16, offset, le)
      ..setUint16(20, 0, le);
    out
      ..add(dirBytes)
      ..add(end.buffer.asUint8List());
    return out.takeBytes();
  }
}
