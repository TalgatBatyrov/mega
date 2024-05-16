import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega/ui/colors/movie_colors.dart';

class BottomTabItem extends StatelessWidget {
  final int index;
  const BottomTabItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 45,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: MovieColors.textColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          switch (index) {
            0 => SvgPicture.asset('assets/icons/vector/home_sel.svg'),
            1 => SvgPicture.asset('assets/icons/vector/book_sel.svg'),
            2 => SvgPicture.asset('assets/icons/vector/document_sel.svg'),
            _ => const SizedBox(),
          },
          const SizedBox(width: 5),
          Text(
            switch (index) {
              0 => 'Movies',
              1 => 'Menu',
              2 => 'Trainings',
              _ => '',
            },
          ),
        ],
      ),
    );
  }
}
