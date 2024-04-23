import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/all_expenses.dart';
import 'package:responsivedashboard/widgets/costom_container.dart';
import 'package:responsivedashboard/widgets/custom_drawer.dart';
import 'package:responsivedashboard/widgets/quick_invoice.dart';

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
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(
                height: 16,
              ),
              QuickInvoice(),
            ],
          ),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
            child: Column(
          children: [
            CustomContainer(
              child: Text('data'),
            ),
          ],
        ))
      ],
    );
  }
}
