import 'package:flutter/material.dart';

import '../constants.dart';
import '../sections.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColour,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: BuyCryptoPageNavBar(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  AddressPageBody(),
                  BuyCryptoPageFooter(),
                  Footer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

