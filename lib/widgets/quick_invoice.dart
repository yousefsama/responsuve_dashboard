import 'package:flutter/material.dart';
import 'package:responsivedashboard/widgets/costom_container.dart';
import 'package:responsivedashboard/widgets/custom_buttom.dart';
import 'package:responsivedashboard/widgets/invoice_form.dart';
import 'package:responsivedashboard/widgets/latest_transaction.dart';
import 'package:responsivedashboard/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 12,
          ),
          LatestTransaction(),
          Divider(height: 24, color: Color(0xffF1F1F1)),
          InvoiceForm(),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                  child: CustomButtom(
                buttomText: 'Add more details',
                buttomColor: Colors.white,
                textColor: Color(0xff4EB7F2),
              )),
              SizedBox(
                height: 24,
              ),
              Expanded(
                  child: CustomButtom(
                buttomText: 'Send Money',
                buttomColor: Color(0xff4EB7F2),
                textColor: Colors.white,
              ))
            ],
          )
        ],
      ),
    );
  }
}
