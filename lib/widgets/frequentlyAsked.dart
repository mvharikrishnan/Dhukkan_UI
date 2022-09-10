import 'package:custom_ui_design/widgets/frequentlyAskedQusList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FrequentlyAskedQus extends StatelessWidget {
  const FrequentlyAskedQus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            'Frequently Asked Questions',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 15,
          ),
          frequentList(
            SubTitle:
                'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone who wants to sell their products/services online Dukaan is the perfect olatform for you.',
            Title: 'What types of bussiness can use Dukaan Premium',
          ),
          Divider(
            thickness: 2,
          ),
          frequentList(
            SubTitle: 'Some Random Data',
            Title: 'Will there be an automatic charge after the paid trial?',
          ),
          Divider(
            thickness: 2,
          ),
          frequentList(
            SubTitle: 'Some Random Data',
            Title: 'What payment methods do you offer?',
          ),
          Divider(
            thickness: 2,
          ),
          frequentList(
            SubTitle: 'Some Random Data',
            Title: 'What happens when my free trial ends?',
          ),
          Divider(thickness: 2,),
          frequentList(SubTitle: 'Some Random Data', Title: 'What are the terms for the custom domain?'),
        ],
      ),
    );
  }
}
