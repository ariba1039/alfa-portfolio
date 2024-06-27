import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/configs.dart';

import 'package:folio/utils/utils.dart';
import 'package:folio/widget/social_links.dart';
import 'package:just_audio/just_audio.dart';

class HomeDesktop extends StatefulWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {
  // late AudioPlayer _audioPlayer;
  // late AudioPlayer player = AudioPlayer();
  @override
  void initState() {
    _playAudio();
    // TODO: implement initState
    super.initState();
    // _audioPlayer = AudioPlayer();
  }

  Future _playAudio() async {
    final player = AudioPlayer();
    //   final player = AudioPlayer();                   // Create a player
    final duration = await player.setUrl(// Load a URL
        'assets/music/red_right_hand.mp3'); // Schemes: (https: | file: | asset: )
    // player.play(); // Play without waiting for completion
    await player.play();
    // player = AudioPlayer();

    // // Set the release mode to keep the source after playback has completed.
    // player.setReleaseMode(ReleaseMode.stop);

    // // Start the player as soon as the app is displayed.
    // WidgetsBinding.instance.addPostFrameCallback((_) async {
    //   await player.setSource(AssetSource('assets/music/red_right_hand.mp3'));
    //   await player.resume();
    // });

    // int result = await _audioPlayer.play('assets/audio/your_audio_file.mp3',
    //     isLocal: true);
    // if (result == 1) {
    //   // success
    // } else {
    //   // error
  }

  @override
  void dispose() {
    //  _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 1.1,
      padding: Space.h,
      child: Stack(
        children: [
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   child: Opacity(
          //     opacity: 0.9,
          //     child: EntranceFader(
          //       offset: const Offset(0, 0),
          //       delay: const Duration(seconds: 0),
          //       duration: const Duration(milliseconds: 1000),
          //       child: Image.asset(
          //         StaticUtils.blackWhitePhoto,
          //         height: size.width < 1200
          //             ? size.height * 0.8
          //             : size.height * 1.05,
          //       ),
          //     ),
          //   ),
          // ),
          Positioned(
            bottom: 0,
            left: 0,
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return const LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.transparent, Colors.black, Colors.black],
                  stops: [
                    0.0,
                    0.6,
                    0.9,
                  ], // Adjust the stop values to control the fade
                ).createShader(bounds);
              },
              blendMode: BlendMode.dstIn,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 0),
                duration: const Duration(milliseconds: 1000),
                child: Image.asset(
                  StaticUtils.blackWhitePhoto,
                  height: size.width < 1200
                      ? size.height * 0.8
                      : size.height * 1.05,
                ),
              ),
            ),
          ),

          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(30),
              AppDimensions.normalize(80),
              AppDimensions.normalize(20),
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      getGreeting(),
                      style: AppText.b1!.copyWith(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    // EntranceFader(
                    //   offset: const Offset(0, 0),
                    //   delay: const Duration(seconds: 2),
                    //   duration: const Duration(milliseconds: 800),
                    //   child: Image.asset(
                    //     StaticUtils.hi,
                    //     height: AppDimensions.normalize(12),
                    //   ),
                    // ),
                  ],
                ),
                Space.y1!,
                Text(
                  "I\'m Sheik Mohammed",
                  style: AppText.h1!.copyWith(
                    fontFamily: 'Montserrat',
                    fontSize: AppDimensions.normalize(25),
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Text(
                  "Alfaz",
                  style: AppText.h1b!.copyWith(
                    fontSize: AppDimensions.normalize(36),
                    height: 1,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      child: EntranceFader(
                        offset: const Offset(0, 10),
                        delay: const Duration(seconds: 1),
                        duration: const Duration(milliseconds: 800),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                  ' Flutter Developer',
                                  speed: const Duration(milliseconds: 50),
                                  textStyle: AppText.b1,
                                ),
                                TyperAnimatedText(
                                  ' Hodophile',
                                  speed: const Duration(milliseconds: 50),
                                  textStyle: AppText.b1,
                                ),
                                TyperAnimatedText(
                                  'a Photographer',
                                  speed: const Duration(milliseconds: 50),
                                  textStyle: AppText.b1,
                                ),
                                TyperAnimatedText(
                                  'a Mentor',
                                  speed: const Duration(milliseconds: 50),
                                  textStyle: AppText.b1,
                                ),
                              ],
                              isRepeatingAnimation: true,
                            ),
                            Icon(
                              Icons.arrow_back,
                              color: AppTheme.c!.primary!,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Space.y2!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
