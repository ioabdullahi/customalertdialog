#ifndef FLUTTER_PLUGIN_CUSTOMALERTDIALOG_PLUGIN_H_
#define FLUTTER_PLUGIN_CUSTOMALERTDIALOG_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace customalertdialog {

class CustomalertdialogPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  CustomalertdialogPlugin();

  virtual ~CustomalertdialogPlugin();

  // Disallow copy and assign.
  CustomalertdialogPlugin(const CustomalertdialogPlugin&) = delete;
  CustomalertdialogPlugin& operator=(const CustomalertdialogPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace customalertdialog

#endif  // FLUTTER_PLUGIN_CUSTOMALERTDIALOG_PLUGIN_H_
