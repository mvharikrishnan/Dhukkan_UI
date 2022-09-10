
import 'package:flutter/material.dart';


class DukaanHelp extends StatelessWidget {
  const DukaanHelp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       
        children: [
          Text('Need Help? Get in touch',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
            children: [
              Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Icon(Icons.chat_bubble_outline,size: 50,color: Colors.black,),
                    Text('Live Chat',style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
              Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Icon(Icons.phone_outlined,size: 50,color: Colors.black,),
                    Text('Phone Call',style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}