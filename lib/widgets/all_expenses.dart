import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/all_expenses_header.dart';
import 'package:responsivedashboard/widgets/all_expenses_list_view.dart';
import 'package:responsivedashboard/widgets/costom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),
          AllExpensesListView(),
        ],
      ),
    );
  }
}
