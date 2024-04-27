import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/costom_container.dart';
import 'package:responsivedashboard/widgets/income_chart.dart';
import 'package:responsivedashboard/widgets/income_details_list_view.dart';
import 'package:responsivedashboard/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          IncomeHeader(),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: AspectRatio(
                        aspectRatio: 1, child: Expanded(child: IncomeChart()))),
                Expanded(flex: 2, child: IncomeDetailsListView()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
