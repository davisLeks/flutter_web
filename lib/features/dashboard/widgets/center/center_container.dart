import 'package:fitness/features/dashboard/widgets/center/bar_graph_widget.dart';
import 'package:flutter/material.dart';

import 'activity_details.dart';
import 'line_chart_widget.dart';

class CenterContainer extends StatelessWidget {
  const CenterContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          ActivitiesDetails(),
          SizedBox(
            height: 18,
          ),
          LineChartWidget(),
          SizedBox(
            height: 18,
          ),
          BarGraphCard(),
        ],
      ),
    );
  }
}
