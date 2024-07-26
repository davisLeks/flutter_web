import 'package:fitness/features/dashboard/widgets/center/center_container.dart';
import 'package:fitness/features/dashboard/widgets/extreme/summary_widget.dart';
import 'package:fitness/features/dashboard/widgets/side%20_nav/side_navigation.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SideNavigation(),
          ),
          Expanded(flex: 7, child: CenterContainer()),
          Expanded(flex: 3, child: SummaryWidget())
        ],
      )),
    );
  }
}
