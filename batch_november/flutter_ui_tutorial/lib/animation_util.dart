import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension WidgetAnimationExtension on Widget {
  Widget get am {
    return animate()
        .shimmer(
          duration: 900.ms,
        )
        .move(
          duration: 900.ms,
        )
        .fadeIn(
          duration: 900.ms,
        );
  }

  Widget get am400 {
    return animate()
        .shimmer(
          duration: 400.ms,
        )
        .move(
          duration: 400.ms,
        )
        .fadeIn(
          duration: 400.ms,
        );
  }

  Widget get am600 {
    return animate()
        .shimmer(
          duration: 600.ms,
        )
        .move(
          duration: 600.ms,
        )
        .fadeIn(
          duration: 600.ms,
        );
  }

  Widget get aml {
    return animate()
        .moveX(
          begin: -100,
          duration: 600.ms,
        )
        .fadeIn(
          duration: 600.ms,
        );
  }

  Widget get amr {
    return animate()
        .moveX(
          begin: 100,
          duration: 600.ms,
        )
        .fadeIn(
          duration: 600.ms,
        );
  }

  Widget listAnimation(int index) {
    double duration = 600 + (index * 200);
    return animate()
        .move(
          duration: duration.ms,
        )
        .fadeIn(
          duration: duration.ms,
        );
  }
}
