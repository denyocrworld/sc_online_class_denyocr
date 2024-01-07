import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class ExNetworkImage extends StatelessWidget {
  final String src;
  final double width;
  final double height;

  const ExNetworkImage({super.key, 
    required this.src,
    this.width = 100,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      src,
      height: width,
      width: height,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loadingProgress) =>
          ImageLoading.getDefaultLoadingBuilder(
              context, child, loadingProgress),
    );
  }
}
