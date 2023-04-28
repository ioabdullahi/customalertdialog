import 'customalertdialog_platform_interface.dart';
import 'package:customalertdialog/customalertdialog_method_channel.dart';

class Customalertdialog {
  Future<String?> getPlatformVersion() {
    return CustomalertdialogPlatform.instance.getPlatformVersion();
  }
}
