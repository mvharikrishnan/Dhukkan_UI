import 'package:custom_ui_design/Screens/catalogue.dart';
import 'package:custom_ui_design/Screens/payments_screen.dart';
import 'package:custom_ui_design/widgets/appBar.dart';
import 'package:custom_ui_design/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
// ignore_for_file: prefer_const_constructors

class ManageStoreScreen extends StatefulWidget {
  const ManageStoreScreen({Key? key}) : super(key: key);

  @override
  State<ManageStoreScreen> createState() => _ManageStoreScreenState();
}

class _ManageStoreScreenState extends State<ManageStoreScreen> {
  int selectedIndex = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Manage Store'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: 1.4,
          children: [
            InkWell(
              onTap:() {
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>CatelogueScreen() ));
              }, 
              child: storeCard(
                  labeltext: 'Managing Designs',
                  icon: Icons.speaker_rounded,
                  color: Colors.orange),
            ),
            InkWell(
              onTap: () {
                //navigtion to payment Screen
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Payment_Screen() ));
              },
              child: storeCard(
                  labeltext: 'Online\nPayment',
                  icon: Icons.currency_rupee_sharp,
                  color: Colors.green),
            ),
            storeCard(
                labeltext: 'Discount Coupons',
                icon: Icons.discount_outlined,
                color: Color.fromARGB(255, 236, 208, 22)),
            storeCard(
                labeltext: 'My\nCustomers',
                icon: Icons.people_alt,
                color: Color.fromARGB(255, 36, 138, 114)),
            storeCard(
                labeltext: 'Store OR\nCode',
                icon: Icons.qr_code_scanner_sharp,
                color: Colors.grey),
            storeCard(
                labeltext: 'Extra\nCharges',
                icon: Icons.request_page_sharp,
                color: Colors.purple),
            storeCard(
              labeltext: 'Order\nForm',
              icon: Icons.format_align_justify_outlined,
              color: Colors.red,
              trailing: Container(
                height: 20,
                width: 40,
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Center(
                  child: Text(
                    'New',
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.green[300],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
           currentIndex: selectedIndex,
        selectedItemColor: Colors.blue.shade700,
        unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.request_page_sharp,
                ),
                label: 'Order'),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_outlined), label: 'Products'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.layers,
                ),
                label: 'Manage'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Account'),
          ]),
    );
  }
}
