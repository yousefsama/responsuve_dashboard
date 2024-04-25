import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/expenses_item_model.dart';
import 'package:responsivedashboard/utils/app_images.dart';
import 'package:responsivedashboard/widgets/expanses_item.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  final items = const [
    ExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'date',
        price: r'$2000'),
    ExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'date',
        price: r'$2000'),
    ExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'date',
        price: r'$2000'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      if (index == 1) {
        return Expanded(
            child: GestureDetector(
          onTap: () {
            setState(() {
              if (selectedIndex != index) {
                selectedIndex = index;
              }
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ExpensesItem(
              expensesItemModel: item,
              isActive: selectedIndex == index,
            ),
          ),
        ));
      } else {
        return Expanded(
            child: GestureDetector(
          onTap: () {
            setState(() {
              if (selectedIndex != index) {
                selectedIndex = index;
              }
            });
          },
          child: ExpensesItem(
            expensesItemModel: item,
            isActive: selectedIndex == index,
          ),
        ));
      }
    }).toList());
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
