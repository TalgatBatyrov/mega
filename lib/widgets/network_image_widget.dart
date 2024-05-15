import 'package:flutter/material.dart';
import 'package:mega/ui/colors/anar_colors.dart';
import 'package:shimmer/shimmer.dart';

class NetworkImageWidget extends StatelessWidget {
  final String? url;
  final double? height;
  final double? width;
  final Color? color;
  const NetworkImageWidget({
    super.key,
    required this.url,
    this.height,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      errorBuilder: (context, error, stackTrace) {
        return const Center(
            child: Text(
          'Error loading image',
          style: TextStyle(
            color: Colors.red,
          ),
        ));
      },
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return Shimmer.fromColors(
          baseColor: AnarColors.white,
          highlightColor: AnarColors.greyScale,
          child: SizedBox(
            // width: 200.0,
            // height: 100.0,
            child: Container(
              color: Colors.red,
            ),
          ),
        );
      },
      url ??
          'https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png',
      fit: BoxFit.cover,
      height: height,
      width: width,
      color: color,
    );
  }
}
