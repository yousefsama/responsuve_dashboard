import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/invoice_form_widget.dart';

class InvoiceForm extends StatelessWidget {
  const InvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: InvoiceFormItem(
                    text: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: InvoiceFormItem(
                    text: 'Customer Email', hint: 'Type customer email')),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: InvoiceFormItem(
                    text: 'Item name', hint: 'Type customer name')),
            SizedBox(
              width: 24,
            ),
            Expanded(child: InvoiceFormItem(text: 'Item mount', hint: 'USD')),
          ],
        )
      ],
    );
  }
}
