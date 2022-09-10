import 'package:custom_ui_design/widgets/cardDhukkan.dart';
import 'package:custom_ui_design/widgets/features.dart';
import 'package:custom_ui_design/widgets/frequentlyAsked.dart';
import 'package:custom_ui_design/widgets/youtube_Video.dart';
import 'package:flutter/material.dart';


class DhukkanPreimium extends StatelessWidget {
  const DhukkanPreimium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text('Dhukkan Premium'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
        const  DhukkanCard(),
        const  FeaturesDukaan(),
        const  Divider(
            thickness: 5,
          ),
          const youtubeVideo(),
           const  Divider(
            thickness: 5,
          ),
          FrequentlyAskedQus(),
        ],
      ),
    );
  }
}
