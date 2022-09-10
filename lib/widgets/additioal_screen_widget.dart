
import 'package:flutter/material.dart';


class ListTileWidget extends StatefulWidget {
  final String text;
  final IconData iconstart;
  final Widget? iconend;
  final bool? toggle;
  const ListTileWidget(
      {Key? key,
      required this.text,
      required this.iconstart,
      this.iconend,
      this.toggle})
      : super(key: key);

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        widget.iconstart,
        size: 22,
        color: const Color.fromARGB(255, 75, 74, 74),
      ),
      title: Text(
        widget.text,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color.fromARGB(255, 59, 59, 59)),
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: widget.iconend,
          )
        ],
      ),
    );
  }
}



