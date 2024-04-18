package com.smartware.metabugo

import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.plugins.GeneratedPluginRegistrant
class MainActivity: FlutterFragmentActivity() {
    override fun configureFlutterEngine(flutterengine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterengine)
    }
}