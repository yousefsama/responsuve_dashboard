import 'package:flutter/material.dart';
import 'package:responsivedashboard/models/income_details_model.dart';
import 'package:responsivedashboard/widgets/income_details_item.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({super.key});
  static const incomeDetailsModel = [
    IncomeDetailsModel(
        color: Color(0xff208CC8), title: 'Design service', presentage: "40%"),
    IncomeDetailsModel(
        color: Color(0xff4EB7F2), title: 'Design product', presentage: "25%"),
    IncomeDetailsModel(
        color: Color(0xff064061), title: 'Product royalti', presentage: "20%"),
    IncomeDetailsModel(
        color: Color(0xffE2DECD), title: 'Other', presentage: "22%"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: incomeDetailsModel.length,
        itemBuilder: (context, index) {
          return IncomeDetailsItem(
              incomeDetailsModel: incomeDetailsModel[index]);
        });
  }
}
