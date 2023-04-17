import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_core_audioplayer/flutter_core_audioplayer.dart';
import 'package:flutter_core_audioplayer/flutter_core_audioplayer_platform_interface.dart';
import 'package:flutter_core_audioplayer/flutter_core_audioplayer_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterCoreAudioplayerPlatform
    with MockPlatformInterfaceMixin
    implements FlutterCoreAudioplayerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterCoreAudioplayerPlatform initialPlatform = FlutterCoreAudioplayerPlatform.instance;

  test('$MethodChannelFlutterCoreAudioplayer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterCoreAudioplayer>());
  });

  test('getPlatformVersion', () async {
    FlutterCoreAudioplayer flutterCoreAudioplayerPlugin = FlutterCoreAudioplayer();
    MockFlutterCoreAudioplayerPlatform fakePlatform = MockFlutterCoreAudioplayerPlatform();
    FlutterCoreAudioplayerPlatform.instance = fakePlatform;

    expect(await flutterCoreAudioplayerPlugin.getPlatformVersion(), '42');
  });
}
