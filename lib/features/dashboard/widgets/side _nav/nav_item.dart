import 'package:fitness/constants/constants.dart';
import 'package:fitness/features/dashboard/controllers/nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavItem extends StatelessWidget {
  const NavItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.controller,
      required this.index});
  final IconData icon;
  final String title;
  final NavController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.selectedIndex.value = index;
        controller.isSelected.value = true;
      },
      child: Obx(
        () => Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: controller.isSelected.value &&
                      controller.selectedIndex.value == index
                  ? selectionColor
                  : null),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: controller.isSelected.value &&
                        controller.selectedIndex.value == index
                    ? backgroundColor
                    : secondaryColor,
                size: 15,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: TextStyle(
                    color: controller.isSelected.value &&
                            controller.selectedIndex.value == index
                        ? backgroundColor
                        : secondaryColor,
                    fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
