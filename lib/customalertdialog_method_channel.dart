import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'customalertdialog_platform_interface.dart';

/// An implementation of [CustomalertdialogPlatform] that uses method channels.
class MethodChannelCustomalertdialog extends CustomalertdialogPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('customalertdialog');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  static Future<void> showAlertDialog() async {
    final alert = await MethodChannelCustomalertdialog()
        .methodChannel
        .invokeMethod('showAlertDialog');
    return alert;
  }
}
