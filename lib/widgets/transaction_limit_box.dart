import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
// ignore_for_file: prefer_const_constructors

class transaction_limit extends StatelessWidget {
  const transaction_limit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: Colors.grey.shade400),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Transaction Limit',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              'A free limit up to which you will recieve the online payments directly in your bank',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade700,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            LinearPercentIndicator(
              padding: const EdgeInsets.all(0),
              barRadius: const Radius.circular(10),
              width: MediaQuery.of(context).size.width - 60,
              lineHeight: 8.0,
              percent: 0.3,
              progressColor: Colors.blue,
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              '36668 left out of ₹50,000',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade700,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Increase limit'),
            ),
          ],
        ),
      ),
    );
  }
}
