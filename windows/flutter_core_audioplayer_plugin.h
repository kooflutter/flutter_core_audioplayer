#ifndef FLUTTER_PLUGIN_FLUTTER_CORE_AUDIOPLAYER_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTER_CORE_AUDIOPLAYER_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutter_core_audioplayer {

class FlutterCoreAudioplayerPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterCoreAudioplayerPlugin();

  virtual ~FlutterCoreAudioplayerPlugin();

  // Disallow copy and assign.
  FlutterCoreAudioplayerPlugin(const FlutterCoreAudioplayerPlugin&) = delete;
  FlutterCoreAudioplayerPlugin& operator=(const FlutterCoreAudioplayerPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutter_core_audioplayer

#endif  // FLUTTER_PLUGIN_FLUTTER_CORE_AUDIOPLAYER_PLUGIN_H_
