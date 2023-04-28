import 'package:flutter_test/flutter_test.dart';
import 'package:customalertdialog/customalertdialog.dart';
import 'package:customalertdialog/customalertdialog_platform_interface.dart';
import 'package:customalertdialog/customalertdialog_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCustomalertdialogPlatform 
    with MockPlatformInterfaceMixin
    implements CustomalertdialogPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final CustomalertdialogPlatform initialPlatform = CustomalertdialogPlatform.instance;

  test('$MethodChannelCustomalertdialog is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCustomalertdialog>());
  });

  test('getPlatformVersion', () async {
    Customalertdialog customalertdialogPlugin = Customalertdialog();
    MockCustomalertdialogPlatform fakePlatform = MockCustomalertdialogPlatform();
    CustomalertdialogPlatform.instance = fakePlatform;
  
    expect(await customalertdialogPlugin.getPlatformVersion(), '42');
  });
}
