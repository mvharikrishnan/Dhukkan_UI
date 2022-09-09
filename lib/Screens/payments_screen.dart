import 'package:custom_ui_design/widgets/payment_method.dart';
import 'package:custom_ui_design/widgets/payment_overview.dart';
import 'package:custom_ui_design/widgets/transaction_limit_box.dart';
import 'package:custom_ui_design/widgets/transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore_for_file: prefer_const_constructors
class Payment_Screen extends StatelessWidget {
  const Payment_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payments'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
        child: ListView(
          children: [
            const transaction_limit(),
            const Method_payment_profile(
                leadingText: 'Default Method', trailingText: 'Online Payment'),
            const Method_payment_profile(
                leadingText: 'Payment Profile', trailingText: 'Bank Account'),
            Divider(
              thickness: 1,
            ),
            Method_payment_profile(
                leadingText: 'Payment Overview', trailingText: 'Life Time'),
            Row(
              children: [
                Payment_Overview_widget(
                    text: 'Amount On Hold', Amount: '0', color: Colors.orange),
                SizedBox(width: 10),
                Payment_Overview_widget(
                    text: 'Amount Recived',
                    Amount: '13,332',
                    color: Colors.green),
              ],
            ),
            Transactions(),
          ],
        ),
      ),
    );
  }
}
