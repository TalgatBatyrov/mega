import 'package:flutter/material.dart';
import 'package:mega/ui/colors/movie_colors.dart';
import 'package:mega/ui/widgets/movie_error.dart';
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
    return url != null
        ? Image.network(
            errorBuilder: (context, error, stackTrace) {
              return const MovieError(message: 'Image not found');
            },
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Shimmer.fromColors(
                baseColor: MovieColors.white,
                highlightColor: MovieColors.greyScale,
                child: SizedBox(
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
          )
        : const AspectRatio(
            aspectRatio: 16 / 9,
            child: Icon(
              Icons.movie,
              size: 100,
              color: Colors.white,
            ),
          );
  }
}
