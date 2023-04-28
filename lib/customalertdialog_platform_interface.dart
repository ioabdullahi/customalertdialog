import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'customalertdialog_method_channel.dart';

abstract class CustomalertdialogPlatform extends PlatformInterface {
  /// Constructs a CustomalertdialogPlatform.
  CustomalertdialogPlatform() : super(token: _token);

  static final Object _token = Object();

  static CustomalertdialogPlatform _instance = MethodChannelCustomalertdialog();

  /// The default instance of [CustomalertdialogPlatform] to use.
  ///
  /// Defaults to [MethodChannelCustomalertdialog].
  static CustomalertdialogPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CustomalertdialogPlatform] when
  /// they register themselves.
  static set instance(CustomalertdialogPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() async {
    final alert = await MethodChannelCustomalertdialog()
        .methodChannel
        .invokeMethod('showAlertDialog');
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
