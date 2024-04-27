import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/costom_container.dart';
import 'package:responsivedashboard/widgets/income_chart.dart';
import 'package:responsivedashboard/widgets/my_card_section.dart';
import 'package:responsivedashboard/widgets/transaction_section.dart';

class MycardAndTransactionSection extends StatelessWidget {
  const MycardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
      children: [
        MyCardSection(),
        Divider(
          height: 40,
          color: Color(0xffF1F1F1),
        ),
        TransactionSection(),
        AspectRatio(aspectRatio: 1, child: Expanded(child: IncomeChart())),
      ],
    ));
  }
}
