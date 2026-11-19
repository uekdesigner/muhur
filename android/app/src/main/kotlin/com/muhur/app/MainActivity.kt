package com.muhur.app

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.content.pm.ApplicationInfo
import android.os.Build
import android.os.Bundle
import android.os.PersistableBundle
import android.os.SystemClock
import android.view.WindowManager
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterFragmentActivity() {

    private val isDebuggable: Boolean
        get() = (applicationInfo.flags and ApplicationInfo.FLAG_DEBUGGABLE) != 0

    private fun isSecureNow(): Boolean =
        (window.attributes.flags and WindowManager.LayoutParams.FLAG_SECURE) != 0

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        // Ekran görüntüsü ve son uygulamalar önizlemesini engelle.
        // Geliştirme (debug) sürümünde kapalı: ekran görüntüsü alabilesin diye.
        if (!isDebuggable) {
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
                    "isSecure" -> result.success(isSecureNow())
                    "setSecure" -> {
                        val on = call.argument<Boolean>("secure") ?: true
                        runOnUiThread {
                            if (on) {
                                // Debug sürümünde koruma hiç açılmaz (ekran görüntüsü alabilmek için).
                                if (!isDebuggable) {
                                    window.addFlags(WindowManager.LayoutParams.FLAG_SECURE)
                                }
                            } else {
                                window.clearFlags(WindowManager.LayoutParams.FLAG_SECURE)
                            }
                            result.success(isSecureNow())
                        }
                    }
                    else -> result.notImplemented()
                }
            }
            
        MethodChannel(messenger, "com.muhur.app/clock")
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "elapsedRealtime" -> result.success(SystemClock.elapsedRealtime())
                    else -> result.notImplemented()
                }
            }
            
        // Play satın alma imzası: Google'ın genel anahtarıyla cihazda doğrulanır.
        MethodChannel(messenger, "com.muhur.app/billing")
            .setMethodCallHandler { call, result ->
                when (call.method) {
                    "verify" -> result.success(
                        verifyPurchase(
                            call.argument<String>("key") ?: "",
                            call.argument<String>("data") ?: "",
                            call.argument<String>("signature") ?: ""
                        )
                    )
                    else -> result.notImplemented()
                }
            }
    }
    
    /** Play satın alma verisinin imzasını (SHA1withRSA) genel anahtarla doğrular. */
    private fun verifyPurchase(key: String, data: String, signature: String): Boolean {
        if (key.isEmpty() || data.isEmpty() || signature.isEmpty()) return false
        return try {
            val pub = java.security.KeyFactory.getInstance("RSA").generatePublic(
                java.security.spec.X509EncodedKeySpec(
                    android.util.Base64.decode(key, android.util.Base64.DEFAULT)
                )
            )
            java.security.Signature.getInstance("SHA1withRSA").run {
                initVerify(pub)
                update(data.toByteArray(Charsets.UTF_8))
                verify(android.util.Base64.decode(signature, android.util.Base64.DEFAULT))
            }
        } catch (e: Exception) {
            false
        }
    }
}