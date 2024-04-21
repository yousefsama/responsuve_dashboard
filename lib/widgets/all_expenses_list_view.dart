import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/expenses_item_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/widgets/expanses_item.dart';

class AllExpensesListView extends StatelessWidget {
  const AllExpensesListView({super.key});
  final List items = const [
    ExpensesItemModel(
        image: AssetsImage.imagesBalance,
        title: 'Balance',
        date: 'date',
        price: 'price'),
    ExpensesItemModel(
        image: AssetsImage.imagesIncome,
        title: 'Income',
        date: 'date',
        price: 'price'),
    ExpensesItemModel(
        image: AssetsImage.imagesExpenses,
        title: 'Expenses',
        date: 'date',
        price: 'price'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .map((e) => Expanded(child: ExpensesItem(expensesItemModel: e)))
          .toList(),
    );
  }
}
