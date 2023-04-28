import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:customalertdialog/customalertdialog_method_channel.dart';

void main() {
  MethodChannelCustomalertdialog platform = MethodChannelCustomalertdialog();
  const MethodChannel channel = MethodChannel('customalertdialog');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
