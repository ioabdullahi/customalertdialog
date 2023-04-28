#import "CustomalertdialogPlugin.h"
#if __has_include(<customalertdialog/customalertdialog-Swift.h>)
#import <customalertdialog/customalertdialog-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "customalertdialog-Swift.h"
#endif

@implementation CustomalertdialogPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftCustomalertdialogPlugin registerWithRegistrar:registrar];
}
@end
