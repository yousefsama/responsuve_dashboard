import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsivedashboard/models/expenses_item_model.dart';
import 'package:responsivedashboard/utils/app_styles.dart';

class InActiveExpensesItem extends StatelessWidget {
  const InActiveExpensesItem({
    super.key,
    required this.expensesItemModel,
  });

  final ExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 20, right: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                  backgroundColor: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(expensesItemModel.image),
                  )),
              const Expanded(child: SizedBox()),
              const Icon(Icons.keyboard_arrow_down_rounded),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            expensesItemModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            expensesItemModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            expensesItemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({
    super.key,
    required this.expensesItemModel,
  });

  final ExpensesItemModel expensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 20, right: 20),
      decoration: BoxDecoration(
        color: const Color(0xff4DB7F2),
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.3),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    expensesItemModel.image,
                    color: Colors.white,
                  ),
                ),
              ),
              const Expanded(child: SizedBox()),
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.white,
              ),
            ],
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            expensesItemModel.title,
            style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            expensesItemModel.price,
            style: AppStyles.styleRegular14.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            expensesItemModel.price,
            style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
