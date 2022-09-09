import 'package:custom_ui_design/widgets/screen_order.dart';

import 'package:flutter/material.dart';

class TranscationProducts extends StatelessWidget {
  const TranscationProducts({
    Key? key,
    required this.Date,
    required this.OrderNo,
    required this.Price,
    required this.Time,
    required this.imageURL,
    required this.nameUser,
    required this.ProductName,
    required this.Size,
  }) : super(key: key);
  final String OrderNo;
  final String Price;
  final String Date;
  final String Time;
  final String imageURL;
  final String nameUser;
  final String ProductName;
  final String Size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (ctx) => ScreenOrder(
                      Date: Date,
                      Price: Price,
                      Time: Time,
                      imageURL: imageURL,
                      nameUser: nameUser,
                      ProductName: ProductName,
                      orderNo: OrderNo,
                      Size: Size,
                    )),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                  height: 65,
                  width: 65,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.network(
                      imageURL,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Order No#$OrderNo',
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '₹$Price',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '$Date,$Time',
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 5,
                                ),
                                Text(
                                  'Successfull',
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                '₹$Price deposited to: 58860200000138',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade700,
                ),
              ),
            ),
            const Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
