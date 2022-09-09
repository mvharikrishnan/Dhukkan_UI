import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class storeCard extends StatelessWidget {
  const storeCard(
      {Key? key,
      required this.labeltext,
      required this.icon,
      required this.color,
      this.trailing})
      : super(key: key);
  final String labeltext;
  final IconData icon;
  final Color? color;
  final Container? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                //Design Of Icons
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: color,
                  ),
                  height: 35,
                  width: 35,
                  child: Icon(
                    icon,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
                (trailing == null) ? const SizedBox() : trailing!,
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              labeltext,
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
