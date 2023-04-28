#include "include/customalertdialog/customalertdialog_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "customalertdialog_plugin.h"

void CustomalertdialogPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  customalertdialog::CustomalertdialogPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
