import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/app_styles.dart';
import 'package:responsivedashboard/widgets/custom_text_field.dart';

class InvoiceFormItem extends StatelessWidget {
  const InvoiceFormItem({super.key, required this.text, required this.hint});
  final String text, hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyles.styleMedium16,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextFeild(hint: hint),
      ],
    );
  }
}
