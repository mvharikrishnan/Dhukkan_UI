import 'package:flutter/cupertino.dart';


class paymentScreenButton extends StatelessWidget {
  const paymentScreenButton({
    Key? key,
    required this.buttonText,
    required this.textColor,
    required this.backgroundcolor,
  }) : super(key: key);
  final String buttonText;

  final Color? backgroundcolor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: backgroundcolor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
        child: Text(
          buttonText,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
