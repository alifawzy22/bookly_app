import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 4,
        ),
        AnimatedTextKit(
          isRepeatingAnimation: false,
          onFinished: () {
            GoRouter.of(context).pushReplacement(AppRouter.kHomeView);
          },
          animatedTexts: [
            TypewriterAnimatedText(
              'Read Free Books',
              speed: kTextAnimationDuration,
              cursor: '',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ],
    );
  }
}
