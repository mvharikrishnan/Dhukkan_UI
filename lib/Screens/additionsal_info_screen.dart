import 'package:custom_ui_design/widgets/additioal_screen_widget.dart';
import 'package:custom_ui_design/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AdditionalInfoScreen extends StatefulWidget {
  const AdditionalInfoScreen({Key? key}) : super(key: key);

  @override
  State<AdditionalInfoScreen> createState() => _AdditionalInfoScreenState();
}

class _AdditionalInfoScreenState extends State<AdditionalInfoScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Additional Information'),
        ),
      ),
      body: Column(
        children: [
          const ListTileWidget(
            text: 'Share Dukkan App',
            iconstart: Icons.share,
            iconend: Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ),
          const ListTileWidget(
            text: 'Change Language',
            iconstart: Icons.mode_comment_outlined,
            iconend: Icon(
              Icons.arrow_forward_ios,
              size: 16,
            ),
          ),
          const ListTileWidget(
            text: 'Whatsapp Chat Support',
            iconstart: Icons.whatsapp_outlined,
            // iconend:
          ),
          const ListTileWidget(
              text: 'Privacy Policy', iconstart: Icons.lock_outlined),
          const ListTileWidget(
              text: 'Rate Us', iconstart: Icons.star_border_outlined),
          const ListTileWidget(
              text: 'Sign Out', iconstart: Icons.logout_outlined),
                SizedBox(
              height:400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  customtext(text: 'Version',color: Colors.grey,),
                  customtext(text: '2.4.3',color: Colors.grey,)
                ],
              ),
            )
        ],
      ),
    );
  }
}
