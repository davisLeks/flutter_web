import 'package:fitness/features/dashboard/models/nav_item_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavController extends GetxController {
  static NavController get instance => Get.find();
  final isSelected = true.obs;
  final selectedIndex = 0.obs;
  final menu = [
    const NavItemModel(icon: Icons.dashboard, title: "Dashboard"),
    const NavItemModel(icon: Icons.person, title: "Profile"),
    const NavItemModel(icon: Icons.run_circle, title: "Exercise"),
    const NavItemModel(icon: Icons.settings, title: "Settings"),
    const NavItemModel(icon: Icons.history, title: "History"),
    const NavItemModel(icon: Icons.logout, title: "SignOut"),
  ];
}
