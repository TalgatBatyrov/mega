import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/ui/widgets/app_back_button.dart';

class AvatarScreen extends StatefulWidget {
  final String? image;
  final String tag;
  const AvatarScreen({
    super.key,
    required this.image,
    required this.tag,
  });

  @override
  State<AvatarScreen> createState() => _AvatarScreenState();
}

class _AvatarScreenState extends State<AvatarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onVerticalDragUpdate: (details) {
          if (details.primaryDelta! > 10) {
            context.pop();
          }
        },
        child: Hero(
          transitionOnUserGestures: true,
          createRectTween: (begin, end) {
            return RectTween(
              begin: begin,
              end: end,
            );
          },
          tag: widget.tag,
          child: widget.image != null
              ? Center(
                  child: Image.network(
                    widget.image!,
                    fit: BoxFit.contain,
                    height: double.infinity,
                  ),
                )
              : const Center(
                  child: Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: const AppBackButton(),
    );
  }
}
