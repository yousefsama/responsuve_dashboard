import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/income_section.dart';
import 'package:responsivedashboard/widgets/my_card_and_transaction_section.dart';

class AllRightSection extends StatelessWidget {
  const AllRightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: MycardAndTransactionSection()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverFillRemaining(child: IncomeSection()),
      ],
    );
  }
}
