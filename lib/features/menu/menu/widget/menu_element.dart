import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega/app/routes/app_navigation.dart';
import 'package:mega/features/menu/menu/repository/model/menu_model.dart';
import 'package:mega/ui/colors/anar_colors.dart';

class MenuElement extends StatelessWidget {
  const MenuElement({
    super.key,
    required this.menuElement,
  });

  final MenuModel menuElement;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        childrenPadding: const EdgeInsets.only(left: 12),
        tilePadding: EdgeInsets.zero,
        collapsedIconColor: AnarColors.white,
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: menuElement.image != null
                ? DecorationImage(
                    image: NetworkImage(menuElement.image!),
                    fit: BoxFit.cover,
                  )
                : null,
          ),
        ),
        title: Text(
          menuElement.name,
          style: const TextStyle(
            color: AnarColors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: [
          for (final item in menuElement.children)
            ListTile(
              onTap: () {
                context.push(
                  AppNavigation.foods,
                  extra: item.id.toString(),
                );
              },
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: menuElement.image != null
                      ? DecorationImage(
                          image: NetworkImage(menuElement.image!),
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
              ),
              title: Text(
                item.name,
                style: const TextStyle(
                  color: AnarColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
