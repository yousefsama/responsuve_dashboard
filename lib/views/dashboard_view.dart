import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/adaptive_layout.dart';
import 'package:responsivedashboard/widgets/desktop_dashboard_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopDashboardLayout(),
      ),
    );
  }
}
