package com.muhur.app

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.content.pm.ApplicationInfo
import android.os.Build
import android.os.Bundle
import android.os.PersistableBundle
import android.view.WindowManager
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterFragmentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // Ekran görüntüsü ve son uygulamalar önizlemesini engelle.
        // Geliştirme (debug) sürümünde kapalı: ekran görüntüsü alabilesin diye.
        val debuggable = (applicationInfo.flags and ApplicationInfo.FLAG_DEBUGGABLE) != 0
        if (!debuggable) {
            window.setFlags(
                WindowManager.LayoutParams.FLAG_SECURE,
                WindowManager.LayoutParams.FLAG_SECURE
            )
        }
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val messenger = flutterEngine.dartExecutor.binaryMessenger

        MethodChannel(messenger, "com.muhur.app/clipboard")
            .setMethodCallHandler { call, result ->
                val cm = getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
                when (call.method) {
                    "copySensitive" -> {
                        val text = call.argument<String>("text") ?: ""
                        val clip = ClipData.newPlainText("muhur", text)
                        clip.description.extras = PersistableBundle().apply {
                            putBoolean("android.content.extra.IS_SENSITIVE", true)
                        }
                        cm.setPrimaryClip(clip)
                        result.success(null)
                    }
                    "clear" -> {
                        if (Build.VERSION.SDK_INT >= 28) {
                            cm.clearPrimaryClip()
                        } else {
                            cm.setPrimaryClip(ClipData.newPlainText("", ""))
                        }
                        result.success(null)
                    }
                    else -> result.notImplemented()
                }
            }

        MethodChannel(messenger, "com.muhur.app/window")
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "isSecure" -> {
                        val secure =
                            (window.attributes.flags and WindowManager.LayoutParams.FLAG_SECURE) != 0
                        result.success(secure)
                    }
                    else -> result.notImplemented()
                }
            }
    }
}