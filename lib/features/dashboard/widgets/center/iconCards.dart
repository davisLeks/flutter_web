import 'package:fitness/constants/constants.dart';
import 'package:fitness/features/dashboard/controllers/icon_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Iconcard extends StatelessWidget {
  const Iconcard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(IconCardController());
    return GestureDetector(
      onTap: () {
        controller.isSelected.value = true;
        controller.selectedIndex.value = index;
      },
      child: Obx(
        () => Container(
          decoration: BoxDecoration(
            color: controller.isSelected.value &&
                    controller.selectedIndex.value == index
                ? selectionColor
                : cardBackgroundColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                controller.card[index].icon,
                height: 30,
                width: 80,
                color: controller.isSelected.value &&
                        controller.selectedIndex.value == index
                    ? backgroundColor
                    : null,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                controller.card[index].figure,
                style: const TextStyle().copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: controller.isSelected.value &&
                            controller.selectedIndex.value == index
                        ? backgroundColor
                        : secondaryColor),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(controller.card[index].text,
                  style: const TextStyle().copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: controller.isSelected.value &&
                              controller.selectedIndex.value == index
                          ? backgroundColor
                          : secondaryColor)),
            ],
          ),
        ),
      ),
    );
  }
}
