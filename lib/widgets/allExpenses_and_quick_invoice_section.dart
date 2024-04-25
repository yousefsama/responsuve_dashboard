import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/all_expenses.dart';
import 'package:responsivedashboard/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: AllExpenses()),
        SliverToBoxAdapter(
          child: SizedBox(height: 16),
        ),
        SliverFillRemaining(hasScrollBody: false, child: QuickInvoice()),
      ],
    );
  }
}
