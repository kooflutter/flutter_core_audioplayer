
import 'flutter_core_audioplayer_platform_interface.dart';

class FlutterCoreAudioplayer {
  Future<String?> getPlatformVersion() {
    return FlutterCoreAudioplayerPlatform.instance.getPlatformVersion();
  }
}
