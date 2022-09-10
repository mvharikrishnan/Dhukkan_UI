import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class frequentList extends StatelessWidget {
  const frequentList({
    Key? key,
    required this.SubTitle,
    required this.Title,
  }) : super(key: key);
  final String Title;
  final String SubTitle;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      
      title: Text(Title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18,right: 18),
          child: Text(SubTitle,style: TextStyle(color: Colors.grey,fontSize: 15),),
        )
      ],
    );
  }
}
