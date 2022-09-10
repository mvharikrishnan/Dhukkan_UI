import 'package:flutter/material.dart';

class CatelogueProducts extends StatefulWidget {
  const CatelogueProducts({
    Key? key,
    required this.ImageURL,
    required this.Price,
    required this.ProductName,
  }) : super(key: key);
  final String ProductName;
  final String Price;
  final String ImageURL;

  @override
  State<CatelogueProducts> createState() => _CatelogueProductsState();
}

class _CatelogueProductsState extends State<CatelogueProducts> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
      ),
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 100,
                width: 100,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.network(
                    widget.ImageURL,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.ProductName,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Text(
                      '1 Piece',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                    Text(
                      '₹${widget.Price}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'In Stock',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.green,
                          ),
                        ),
                        Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(
                                () {
                                  isSwitched = true;
                                },
                              );
                            })
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          Divider(
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.share_outlined), Text('Share Product')],
          )
        ],
      ),
    );
  }
}
