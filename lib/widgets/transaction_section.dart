import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/TransactionListView.dart';
import 'package:responsivedashboard/widgets/transaction_history.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistory(),
        SizedBox(
          height: 20,
        ),
        TransactionListView(),
      ],
    );
  }
}
