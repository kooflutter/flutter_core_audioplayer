#include "include/flutter_core_audioplayer/flutter_core_audioplayer_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutter_core_audioplayer_plugin.h"

void FlutterCoreAudioplayerPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutter_core_audioplayer::FlutterCoreAudioplayerPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
