import 'package:custom_ui_design/widgets/payment_transaction_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
// ignore_for_file: prefer_const_constructors

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        Text(
          'Transactions',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            paymentScreenButton(buttonText: 'On Hold', textColor: Colors.grey, backgroundcolor: Colors.grey[350]),
            paymentScreenButton(buttonText: 'Payout (15)', textColor: Colors.white, backgroundcolor: Colors.blue),
            paymentScreenButton(buttonText: 'Refunds', textColor: Colors.grey, backgroundcolor: Colors.grey[350])
          ],
        )
      ],
    );
  }
}
