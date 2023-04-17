import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_core_audioplayer/flutter_core_audioplayer_method_channel.dart';

void main() {
  MethodChannelFlutterCoreAudioplayer platform = MethodChannelFlutterCoreAudioplayer();
  const MethodChannel channel = MethodChannel('flutter_core_audioplayer');

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
