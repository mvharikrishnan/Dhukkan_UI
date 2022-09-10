import 'package:custom_ui_design/widgets/featuresRow.dart';

import 'package:flutter/material.dart';


class FeaturesDukaan extends StatelessWidget {
  const FeaturesDukaan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Features',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const FeaturesList(
            SubTitile:
                'Get your own custom domain and build your brand on the internet.',
            Title: 'Custom Domain Name',
            icons: Icons.web,
          ),
          const FeaturesList(
            SubTitile:
                'Get green verified badge under your store name and build trust',
            Title: 'Verified seller badge',
            icons: Icons.verified_outlined,
          ),
          FeaturesList(
            SubTitile:
                'Access all the exclusive premium features on Dukaan for PC.',
            Title: 'Dukaan For PC',
            icons: Icons.laptop_mac_outlined,
          ),
          FeaturesList(
            SubTitile:
                'Get your questions resolved with our priority customer support',
            Title: 'Priority Support',
            icons: Icons.headset_mic_outlined,
          ),
          SizedBox(height: 15,)
        ],
      ),
    );
  }
}
