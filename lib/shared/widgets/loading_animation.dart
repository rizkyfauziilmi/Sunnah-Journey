import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({
    super.key,
    this.fit = BoxFit.contain,
    this.frameRate = FrameRate.composition,
  });

  final BoxFit fit;
  final FrameRate frameRate;

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/lotties/loading.json',
      fit: fit,
      frameRate: frameRate,
    );
  }
}
