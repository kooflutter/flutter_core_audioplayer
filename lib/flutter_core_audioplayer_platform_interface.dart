import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_core_audioplayer_method_channel.dart';

abstract class FlutterCoreAudioplayerPlatform extends PlatformInterface {
  /// Constructs a FlutterCoreAudioplayerPlatform.
  FlutterCoreAudioplayerPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterCoreAudioplayerPlatform _instance = MethodChannelFlutterCoreAudioplayer();

  /// The default instance of [FlutterCoreAudioplayerPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterCoreAudioplayer].
  static FlutterCoreAudioplayerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterCoreAudioplayerPlatform] when
  /// they register themselves.
  static set instance(FlutterCoreAudioplayerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
