import 'package:flutter/material.dart';
import 'package:responsivedashboard/views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashboardApp());
}

class ResponsiveDashboardApp extends StatelessWidget {
  const ResponsiveDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardView(),
    );
  }
}
