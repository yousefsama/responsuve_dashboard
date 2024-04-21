import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/expenses_item_model.dart';
import 'package:responsivedashboard/widgets/active_and_inactive_expenses_item.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key, required this.expensesItemModel});
  final ExpensesItemModel expensesItemModel;
  @override
  Widget build(BuildContext context) {
    return InActiveExpensesItem(expensesItemModel: expensesItemModel);
  }
}
