import 'package:fitness/features/dashboard/controllers/nav_controller.dart';
import 'package:fitness/features/dashboard/widgets/side%20_nav/nav_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideNavigation extends StatelessWidget {
  const SideNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: ListView.separated(
        itemCount: controller.menu.length,
        itemBuilder: (_, index) => buildMenu(controller, index),
        separatorBuilder: (_, __) => const SizedBox(
          height: 10,
        ),
      ),
    );
  }
}

Widget buildMenu(NavController controller, int index) {
  return NavItem(
    controller: controller,
    index: index,
    icon: controller.menu[index].icon,
    title: controller.menu[index].title,
  );
}
