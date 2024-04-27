import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/allExpenses_and_quick_invoice_section.dart';
import 'package:responsivedashboard/widgets/custom_drawer.dart';
import 'package:responsivedashboard/widgets/my_card_and_transaction_section.dart';

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
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(child: MycardAndTransactionSection()),
      ],
    );
  }
}
