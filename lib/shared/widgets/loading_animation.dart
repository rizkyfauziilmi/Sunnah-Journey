import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({
    super.key,
    this.fit = BoxFit.contain,
    this.frameRate = FrameRate.composition,
    this.width = 350,
    this.height = 350,
  });

  final BoxFit fit;
  final double width;
  final double height;
  final FrameRate frameRate;

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/lotties/loading.json',
      width: width,
      height: height,
      fit: fit,
      frameRate: frameRate,
    );
  }
}
