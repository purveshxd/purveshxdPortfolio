import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextW extends StatelessWidget {
  const AnimatedTextW({super.key});

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).textScaleFactor;
    return DefaultTextStyle(
      softWrap: true,
      style: const TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      child: AnimatedTextKit(
        isRepeatingAnimation: true,
        repeatForever: true,
        animatedTexts: [
          TypewriterAnimatedText('Flutter Developer'),
          // TypewriterAnimatedText('3D Artist'),
          TypewriterAnimatedText('Freelancer'),
          TypewriterAnimatedText('3D Visual Artist'),
        ],
      ),
    );
  }
}
