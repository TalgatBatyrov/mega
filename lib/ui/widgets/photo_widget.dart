import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/ui/widgets/network_image_widget.dart';

class PhotoWidget extends StatelessWidget {
  final String? photo;
  const PhotoWidget({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return photo != null
        ? GestureDetector(
            onTap: () {
              context.push(
                AppNavigation.avatarScreen,
                extra: {'image': photo, 'tag': 'avatar'},
              );
            },
            child: Hero(
              tag: 'avatar',
              child: NetworkImageWidget(
                url: photo,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
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
