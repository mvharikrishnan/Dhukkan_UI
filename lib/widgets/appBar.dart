import 'package:flutter/material.dart';


class AppBarWidget extends StatelessWidget {
  final String title;
  final IconData? IconAppLeading;
  final IconData? IconAppTrailing;
  const AppBarWidget({Key? key,
  required this.title,
  this.IconAppLeading,
  this.IconAppTrailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: Icon(IconAppLeading),
      
    );
  }
}