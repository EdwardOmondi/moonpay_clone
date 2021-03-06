import 'package:flutter/material.dart';
import 'package:moonpay_clone/constants.dart';
import 'package:moonpay_clone/sections.dart';

class BuyCryptoPage extends StatelessWidget {
  const BuyCryptoPage({Key? key}) : super(key: key);

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
                  BuyCryptoPageBody(),
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