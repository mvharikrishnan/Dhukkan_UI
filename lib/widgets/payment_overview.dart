
import 'package:flutter/material.dart';


class Payment_Overview_widget extends StatelessWidget {
  const Payment_Overview_widget({Key? key,
  required this.text,
  required this.Amount,
  required this.color,
  }) : super(key: key);
  final String text;
  final String Amount;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(left: 15),
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,style: TextStyle(color: Colors.white),),
            Row(
              children: [
                Icon(Icons.currency_rupee_sharp,color: Colors.white,),
                Text(Amount, style: const TextStyle(color: Colors.white, fontSize: 30),),
              ],
            )
          ],
        ),
      ),
    );
  }
}