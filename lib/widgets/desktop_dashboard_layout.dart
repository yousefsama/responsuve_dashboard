import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/all_expenses.dart';
import 'package:responsivedashboard/widgets/custom_drawer.dart';

class DesktopDashboardLayout extends StatelessWidget {
  const DesktopDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Expanded(child: AllExpenses()),
              ],
            ),
          ),
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }
}
