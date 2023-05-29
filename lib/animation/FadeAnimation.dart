import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  const FadeAnimation( {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // PlayAnimationBuilder plays animation once
    return PlayAnimationBuilder<double>(
      tween: Tween(begin: 120.0, end: 0.0), // 100.0 to 200.0
      duration: const Duration(milliseconds: 600), // for 1 second
      builder: (context, value, _) {
        return Container(
          width: value, // use animated value
          height: value,
        );
      },
      onCompleted: () {
        // do something ...
      },
    );
  }
}