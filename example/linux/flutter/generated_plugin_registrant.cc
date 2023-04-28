//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <customalertdialog/customalertdialog_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) customalertdialog_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "CustomalertdialogPlugin");
  customalertdialog_plugin_register_with_registrar(customalertdialog_registrar);
}
