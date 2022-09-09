import 'package:custom_ui_design/widgets/payment_method.dart';
import 'package:custom_ui_design/widgets/payment_overview.dart';
import 'package:custom_ui_design/widgets/transaction_limit_box.dart';
import 'package:custom_ui_design/widgets/transactions.dart';
import 'package:custom_ui_design/widgets/transcation_products.dart';
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
            TranscationProducts(
              Date: 'jul 24',
              OrderNo: '82342858',
              Price: '799',
              Time: '02:24 Pm',
              imageURL:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/h/d/hdmwhsh6504_1_2.jpg',
              nameUser: 'Deepa',
              ProductName: 'EXPLORE | MEN | NAVY BLUE',
              Size: 'XXL',
            ),
            TranscationProducts(
              Date: 'Aug 01',
              OrderNo: '187418479',
              Price: '499',
              Time: '03:30 Pm',
              imageURL:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-20-21-004963_1.jpg',
              nameUser: 'Hari',
              ProductName: 'MEN | T SHIRT',
              Size: 'L',
            ),
            TranscationProducts(
              Date: 'Sep 47',
              OrderNo: '8278472',
              Price: '899',
              Time: '11:00 Am',
              imageURL:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/t/s/tsmwhsh6508_1_4.jpg',
              nameUser: 'Vishu',
              ProductName: 'EXPLORE | BLUE',
              Size: 'XXXL',
            ),
            TranscationProducts(
              Date: 'Dec 05',
              OrderNo: '5478427',
              Price: '589',
              Time: '12:50 Pm',
              imageURL:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-19-20-000576_1.jpg',
              nameUser: 'Sreehari',
              ProductName: 'WOODLAND | NAVY',
              Size: 'M',
            ),
            TranscationProducts(
              Date: 'Jan 04',
              OrderNo: '82848283',
              Price: '499',
              Time: '01:00 Pm',
              imageURL:
                  'https://shopdisney.in/media/catalog/product/cache/dff98280ed764012eadfa777851316fd/s/t/sty-18-19-002268_1_1.jpg',
              nameUser: 'Sneha',
              ProductName: 'NAVY BLUE | H&M',
              Size: 'XL',
            )
          ],
        ),
      ),
    );
  }
}
