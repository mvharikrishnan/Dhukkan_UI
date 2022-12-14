import 'package:custom_ui_design/Screens/additionsal_info_screen.dart';
import 'package:custom_ui_design/Screens/manage_store.dart';
import 'package:custom_ui_design/Screens/payments_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ManageStoreScreen(),
    );
  }
}
