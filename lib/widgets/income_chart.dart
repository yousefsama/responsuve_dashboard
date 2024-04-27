import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            color: const Color(0xff208CC8),
            radius: activeIndex == 0 ? 30 : 40,
            value: 40,
            showTitle: false,
          ),
          PieChartSectionData(
              color: const Color(0xff4EB7F2),
              radius: activeIndex == 1 ? 30 : 40,
              value: 25,
              showTitle: false),
          PieChartSectionData(
              color: const Color(0xff064061),
              radius: activeIndex == 2 ? 30 : 40,
              value: 20,
              showTitle: false),
          PieChartSectionData(
              color: const Color(0xffE2DECD),
              radius: activeIndex == 3 ? 30 : 40,
              value: 22,
              showTitle: false),
        ]));
  }
}
