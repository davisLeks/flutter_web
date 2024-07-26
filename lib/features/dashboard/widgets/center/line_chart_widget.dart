import 'package:fitness/constants/constants.dart';
import 'package:fitness/features/dashboard/controllers/linechart_controller.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common/custom_card.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LinechartController());

    return CustomCard(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Steps Overview",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            AspectRatio(
              aspectRatio: 16 / 6,
              child: LineChart(
                LineChartData(
                  lineTouchData: const LineTouchData(
                    handleBuiltInTouches: true,
                  ),
                  gridData: const FlGridData(show: false),
                  titlesData: FlTitlesData(
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return controller.bottomTitle[value.toInt()] != null
                              ? SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: Text(
                                      controller.bottomTitle[value.toInt()]
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[400])),
                                )
                              : const SizedBox();
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return controller.leftTitle[value.toInt()] != null
                              ? Text(
                                  controller.leftTitle[value.toInt()]
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey[400]))
                              : const SizedBox();
                        },
                        showTitles: true,
                        interval: 1,
                        reservedSize: 40,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  lineBarsData: [
                    LineChartBarData(
                      color: selectionColor,
                      barWidth: 2.5,
                      belowBarData: BarAreaData(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            selectionColor.withOpacity(0.5),
                            Colors.transparent
                          ],
                        ),
                        show: true,
                      ),
                      dotData: const FlDotData(show: false),
                      spots: controller.spots,
                    )
                  ],
                  minX: 0,
                  maxX: 120,
                  maxY: 105,
                  minY: -5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
