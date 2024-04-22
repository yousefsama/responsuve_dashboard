import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/expenses_item_model.dart';
import 'package:responsivedashboard/widgets/active_and_inactive_expenses_item.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(
      {super.key, required this.expensesItemModel, required this.isActive});
  final ExpensesItemModel expensesItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveExpensesItem(expensesItemModel: expensesItemModel)
        : InActiveExpensesItem(expensesItemModel: expensesItemModel);
  }
}
