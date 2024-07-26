import 'package:fitness/features/dashboard/models/icon_card_models.dart';
import 'package:get/get.dart';

class IconCardController extends GetxController {
  static IconCardController get instance => Get.find();
  final isSelected = false.obs;
  final selectedIndex = 0.obs;
  final card = [
    const IconCardModel(
        icon: "assets/icons/burn.png", figure: "305", text: "Calories burnt"),
    const IconCardModel(
        icon: "assets/icons/steps.png", figure: "10,678", text: "Steps"),
    const IconCardModel(
        icon: "assets/icons/distance.png", figure: "10 km", text: "Distance"),
    const IconCardModel(
        icon: "assets/icons/sleep.png", figure: "305", text: "Sleep"),
  ];
}
