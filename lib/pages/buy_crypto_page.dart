import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moonpay_clone/constants.dart';
import 'package:moonpay_clone/sections.dart';

import '../elements.dart';

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
            child: NavBar(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  BuyCryptoPageBody(),
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

class BuyCryptoPageBody extends StatelessWidget {
  const BuyCryptoPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth;
    double screenWidthFunc(BuildContext context) =>
        MediaQuery.of(context).size.width;
    screenWidth = screenWidthFunc(context);
    if (screenWidth < 670) {
      return Container(child: const Text('Buy Crypto Page Body'));
    } else {
      print(MediaQuery.of(context).size.height.toString());
      return Column(
        children: [
          const SizedBox(height: 80),
          Card(
            shadowColor: kMainColour,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: SizedBox(
                width: 352,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const SelectableText(
                            'Buy BTC',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Sf',
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40.0),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Text(
                                'Sell BTC',
                                style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Sf',
                                    color: Color(0xffcccccc)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: IconButton(
                              hoverColor: kBackgroundColour,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.menu_outlined,
                                size: 22,
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 32),
                      const Text(
                        'I want to spend',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Sf',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff505052)),
                      ),
                      const SizedBox(height: 8),
                      BuyCryptoTextfield(
                        currency: 'KES',
                        placeholder: '40,000',
                        image: kenyanFlag,
                      ),
                      const SizedBox(height: 32),
                      const Text(
                        'I want to buy',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Sf',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff505052)),
                      ),
                      const SizedBox(height: 8),
                      BuyCryptoTextfield(
                        currency: 'BTC',
                        placeholder: '0.01044',
                        image: bitcoinImage,
                      ),
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          const Text(
                            'Summary',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Sf',
                                fontWeight: FontWeight.bold,
                                color: Color(0xff505052)),
                          ),
                          Expanded(child: Container()),
                          const Text(
                            'Quote updates in 1s',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Sf',
                                color: Color(0xff505052)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xfff3f4f5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: SizedBox(
                            width: 320,
                            height: 48,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    text: 'You get ',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Sf',
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: '0.01046 BTC ',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontFamily: 'Sf',
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                          text: 'for ',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Sf',
                                          )),
                                      TextSpan(
                                          text: '\nKES 40,000.00',
                                          style: TextStyle(
                                              height: 1.5,
                                              fontSize: 16,
                                              fontFamily: 'Sf',
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                                const Icon(
                                  Icons.expand_more_outlined,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 9,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: kMainColour,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32.0,
                            vertical: 16.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_forward_outlined,
                                color: kMainColour,
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Text(
                                'Continue',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: kBackgroundColour,
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                              Icon(
                                Icons.arrow_forward_outlined,
                                color: kBackgroundColour,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(child: Container()),
                          const Text(
                            'By continuing, you agree to our cookie policy',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Sf',
                                color: Color(0xff505052)),
                          ),
                          Expanded(child: Container()),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 64),
          const TinyLandingText(),
          const SizedBox(height: 56),
        ],
      );
    }
  }
}

class BuyCryptoPageFooter extends StatelessWidget {
  const BuyCryptoPageFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth;
    double screenWidthFunc(BuildContext context) =>
        MediaQuery.of(context).size.width;
    screenWidth = screenWidthFunc(context);
    if (screenWidth < 960) {
      return Container(
        color: kBlackColour,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Subscribe to our newsletter',
              style: TextStyle(
                fontSize: 16,
                color: kBackgroundColour,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height:20
            ),
          ]),
        ),
      );
    }
    if (screenWidth < 1280) {
      return Container(
        color: kBlackColour,
        width: screenWidth,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Subscribe to our newsletter',
                  style: TextStyle(
                    fontSize: 16,
                    color: kBackgroundColour,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ]),
        ),
      );
    } else {
      return Container(
        color: kBlackColour,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Subscribe to our newsletter',
                  style: TextStyle(
                    fontSize: 16,
                    color: kBackgroundColour,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ]),
        ),
      );
    }
  }
}

class BuyCrypotPageFooterButtons extends StatelessWidget {
  const BuyCrypotPageFooterButtons({Key? key,
  required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text(text));
  }
}
