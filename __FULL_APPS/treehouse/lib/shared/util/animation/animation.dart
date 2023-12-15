import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

extension WidgetAnimationExtension on Widget {
  Widget get aml {
    return this
        .animate()
        .moveX(
          begin: -200,
          duration: 600.ms,
        )
        .fadeIn(
          duration: 600.ms,
        );
  }

  Widget get amr {
    return this
        .animate()
        .moveX(
          begin: 200,
          duration: 600.ms,
        )
        .fadeIn(
          duration: 600.ms,
        );
  }

  Widget get amt {
    return this
        .animate()
        .moveY(
          begin: -200,
          duration: 600.ms,
        )
        .fadeIn(
          duration: 600.ms,
        );
  }

  Widget get amb {
    return this
        .animate()
        .moveY(
          begin: 200,
          duration: 600.ms,
        )
        .fadeIn(
          duration: 600.ms,
        );
  }

  Widget amx(int index) {
    return this
        .animate()
        .moveX(
          begin: -100,
          duration: (300 + (index * 400)).ms,
        )
        .shimmer(
          duration: (300 + (index * 400)).ms,
        )
        .fadeIn(
          duration: (300 + (index * 400)).ms,
        );
  }
}

extension WidgetColumnAnimationExtension on Column {
  Widget get amz {
    List<Widget> children = this.children;

    for (var i = 0; i < children.length; i++) {
      children[i] = children[i]
          .animate()
          .move(
            duration: (300 + (i * 600)).ms,
          )
          .shimmer(
            duration: (300 + (i * 600)).ms,
          )
          .fadeIn(
            duration: (300 + (i * 600)).ms,
          );
    }
    return Column(
      crossAxisAlignment: this.crossAxisAlignment,
      mainAxisAlignment: this.mainAxisAlignment,
      children: children,
    );
  }
}
