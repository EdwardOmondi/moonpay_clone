import 'package:flutter/material.dart';
import 'package:moonpay_clone/constants.dart';
import 'package:moonpay_clone/elements.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth;
    double screenWidthFunc(BuildContext context) =>
        MediaQuery.of(context).size.width;
    screenWidth = screenWidthFunc(context);
    if (screenWidth < 1023) {
      return SizedBox(
        width: screenWidth - 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NavBarLogo(),
            Expanded(
              child: Container(),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                // Icons.menu_outlined,
                FontAwesomeIcons.bars,
                size: 22,
              ),
            )
          ],
        ),
      );
    }
    if (screenWidth < 1280) {
      return SizedBox(
        width: screenWidth - 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NavBarLogo(),
            const NavBarDoubleButton(),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                NavBarButton(text: 'About Us'),
                NavBarButton(text: 'Career'),
                NavBarButton(text: 'Blog'),
                NavBarButton(text: 'Help Center'),
              ],
            ),
          ],
        ),
      );
    } else {
      return SizedBox(
        width: screenWidth - 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NavBarLogo(),
            const NavBarDoubleButton(),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                NavBarButton(text: 'About Us'),
                NavBarButton(text: 'Career'),
                NavBarButton(text: 'Blog'),
                NavBarButton(text: 'Help Center'),
              ],
            ),
          ],
        ),
      );
    }
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth;
    double screenWidthFunc(BuildContext context) =>
        MediaQuery.of(context).size.width;
    screenWidth = screenWidthFunc(context);

    if (screenWidth < 670) {
      return SizedBox(
        width: screenWidth - 40,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LargeLandingText(),
            const SmallLandingText(),
            const BuyCryptoButton(),
            const SizedBox(height: 64),
            const TinyLandingText(),
            const SizedBox(height: 24),
            LandingPageImage(
              image: pic1,
              // width:400,
            ),
            const SizedBox(height: 16),
            const GetStartedSection(),
            const SizedBox(height: 24),
          ],
        ),
      );
    }
    if (screenWidth < 960) {
      return Row(
        children: [
          Expanded(child: Container()),
          SizedBox(
            width: screenWidth - 40, // removing double the padding
            child: Column(
              children: [
                const LargeLandingText(),
                const SmallLandingText(),
                const BuyCryptoButton(),
                const SizedBox(height: 64),
                const TinyLandingText(),
                const SizedBox(height: 24),
                LandingPageImage(
                  image: pic1,
                ),
                const SizedBox(height: 16),
                const GetStartedSection(),
                const SizedBox(height: 24),
              ],
            ),
          ),
          Expanded(child: Container()),
        ],
      );
    }
    if (screenWidth < 1280) {
      return SizedBox(
        width: screenWidth - 40,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 536,
                  child: Column(
                    children: const [
                      LargeLandingText(),
                      SmallLandingText(),
                      BuyCryptoButton(),
                      SizedBox(height: 64),
                      TinyLandingText(),
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                Flexible(
                  child: LandingPageImage(
                    image: pic2,
                    //width:500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const GetStartedSection(),
            const SizedBox(height: 24),
          ],
        ),
      );
    } else {
      return SizedBox(
        width: screenWidth - 120,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 599,
                  child: Column(
                    children: const [
                      LargeLandingText(),
                      SmallLandingText(),
                      BuyCryptoButton(),
                      SizedBox(height: 64),
                      TinyLandingText(),
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                Flexible(
                  child: LandingPageImage(
                    image: pic2,
                    //width:500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const GetStartedSection(),
            const SizedBox(height: 24),
          ],
        ),
      );
    }
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);
  

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 68),
              const FooterButtons(),
              const SizedBox(height: 48),
              const FooterLinks(),
              const SizedBox(height: 16),
              const FooterSocialMediaButtons(),
              const SizedBox(height: 16),
              Container(
                height: 0.5,
                color: kBackgroundColour,
              ),
              const SizedBox(height: 24),
              const CopyrightText(),
              const SizedBox(height: 24),
              const SubscribeForm(),
            ],
          ),
        ),
      );
    }
    if (screenWidth < 1280) {
      return Container(
        color: kBlackColour,
        width: screenWidth,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 56),
                    FooterLinks(),
                    SizedBox(height: 24),
                    FooterButtons(),
                    SizedBox(height: 40),
                    FooterSocialMediaButtons(),
                    SizedBox(height: 24),
                    CopyrightText(),
                    SizedBox(height: 64),
                  ],
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 56),
                    SubscribeForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        color: kBlackColour,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 56),
                    FooterLinks(),
                    SizedBox(height: 24),
                    FooterButtons(),
                    SizedBox(height: 40),
                    FooterSocialMediaButtons(),
                    SizedBox(height: 24),
                    CopyrightText(),
                    SizedBox(height: 64),
                  ],
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 56),
                    SubscribeForm(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}

class FooterSocialMediaButtons extends StatelessWidget {
  const FooterSocialMediaButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SocialMediaButton(fontAwesomeIcon: FontAwesomeIcons.twitter),
        SizedBox(width: 12),
        SocialMediaButton(fontAwesomeIcon: FontAwesomeIcons.linkedinIn),
        SizedBox(width: 12),
        SocialMediaButton(fontAwesomeIcon: FontAwesomeIcons.facebook),
        SizedBox(width: 12),
        SocialMediaButton(fontAwesomeIcon: FontAwesomeIcons.instagram),
      ],
    );
  }
}

class FooterButtons extends StatelessWidget {
  const FooterButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      children: [
        Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(blackAndWhiteLogo),
              //fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(width: 16),
        const SmallBuyCoinsButton(text: 'Buy Crypto'),
        const SizedBox(width: 8),
        const SmallBuyCoinsButton(text: 'Sell Crypto'),
      ],
    );
  }
}

class FooterLinks extends StatelessWidget {
  const FooterLinks({
    Key? key,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  const [
            FooterLinkButton(text: 'Careers',),
            SizedBox(height: 12),
            FooterLinkButton(text: 'Blog',),
            SizedBox(height: 12),
            FooterLinkButton(text: 'Status',),],
        ),
        Expanded(child: Container()),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  const [
            FooterLinkButton(text: 'Security',),
            SizedBox(height: 12),
            FooterLinkButton(text: 'Contact us',),
            SizedBox(height: 12),
            FooterLinkButton(text: 'Help Center',),
          ],
        ),
        Expanded(child: Container()),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  const [
            FooterLinkButton(text: 'Terms of use',),
            SizedBox(height: 12),
            FooterLinkButton(text: 'Privacy Policy',),
            SizedBox(height: 12),
            FooterLinkButton(text: 'Cookie Policy',),
          ],
        ),
        Expanded(child: Container()),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  const [
            FooterLinkButton(text: 'AML/KYC Policy',),
            SizedBox(height: 12),
            FooterLinkButton(text: 'Licenses',),
            SizedBox(height: 12),
            FooterLinkButton(text: 'Media',),
          ],
        ),
        Expanded(child: Container()),
      ],
    );
  }
}

class LargeLandingText extends StatelessWidget {
  const LargeLandingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth;
    double screenWidthFunc(BuildContext context) =>
        MediaQuery.of(context).size.width;
    screenWidth = screenWidthFunc(context);

    if (screenWidth < 340) {
      return Padding(
          padding: const EdgeInsets.only(top: 80, bottom: 30),
          child: Text(
            'Crypto just got easy',
            style: TextStyle(
              fontSize: 52.8,
              height: 1.2,
              fontFamily: kLogoFont,
              fontWeight: FontWeight.w600,
            ),
          ));
    }
    if (screenWidth < kSmallScreen) {
      return Padding(
          padding: const EdgeInsets.only(top: 80, bottom: 30),
          child: Text(
            'Crypto just\n got easy',
            style: TextStyle(
              fontSize: 52.8,
              height: 1.2,
              fontFamily: kLogoFont,
              fontWeight: FontWeight.w600,
            ),
          ));
    }
    if (screenWidth < 1280) {
      return Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Text(
            'Crypto just\n got easy',
            style: TextStyle(
              fontSize: 72,
              height: 0.9,
              fontFamily: kLogoFont,
              fontWeight: FontWeight.w600,
            ),
          ));
    } else {
      return Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: Text(
          'Crypto just\n got easy',
          style: TextStyle(
            fontSize: 88,
            height: 0.9,
            fontFamily: kLogoFont,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }
  }
}

class SmallLandingText extends StatelessWidget {
  const SmallLandingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth;
    double screenWidthFunc(BuildContext context) =>
        MediaQuery.of(context).size.width;
    screenWidth = screenWidthFunc(context);
    if(screenWidth<482){return const Padding(
        padding: EdgeInsets.only(bottom: 24),
        child: Text(
          'A fast and simple way to buy and sell crypto',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF3A414B),
          ),
          textAlign:TextAlign.center,
        ));
  }
  else {
      return const Padding(
        padding: EdgeInsets.only(bottom: 24),
        child: Text(
          'A fast and simple way to buy and sell crypto',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF3A414B),
          ),
        ));
    }
  }
}

class TinyLandingText extends StatelessWidget {
  const TinyLandingText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth;
    double screenWidthFunc(BuildContext context) =>
        MediaQuery.of(context).size.width;
    screenWidth = screenWidthFunc(context);
    if (screenWidth < 355) {
      return Column(children: [Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Trusted by 10M+ people',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF6b6f78),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            color: const Color(0xFF00b67a),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(
                // vertical: 4,
                horizontal: 6,
              ),
              child: Text(
                '4.1/5',
                style: TextStyle(
                  fontSize: 16,
                  color: kBackgroundColour,
                ),
              )),
        ),
        ],
    ),
    const SizedBox(height:1),
    Container(
          height: 22.0,
          width: 65.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(trustpilot),
              // fit: BoxFit.fill,
            ),
          ),
        ),
      
  ],);
    }else {
      return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Trusted by 10M+ people',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF6b6f78),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            color: const Color(0xFF00b67a),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(
                // vertical: 4,
                horizontal: 6,
              ),
              child: Text(
                '4.1/5',
                style: TextStyle(
                  fontSize: 16,
                  color: kBackgroundColour,
                ),
              )),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          height: 22.0,
          width: 65.5,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(trustpilot),
              // fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
    }
  }
}

class LandingPageImage extends StatelessWidget {
  const LandingPageImage({
    Key? key,
    required this.image,
    // required this.width,
  }) : super(key: key);
  final String image;
  // final double width;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      //fit: BoxFit.contain,
    );
  }
}

class MobileInHandPicture extends StatelessWidget {
  const MobileInHandPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < kTabletScreen) {
      return Container(
        height: 772.0,
        width: 629.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pic1),
            //fit: BoxFit.fill,
          ),
        ),
      );
    }
    if (MediaQuery.of(context).size.width < kSmallScreen) {
      return Container(
        height: 842.0,
        width: 686.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pic1),
            //fit: BoxFit.fill,
          ),
        ),
      );
    }
    if (MediaQuery.of(context).size.width < kMediumScreen) {
      return Container(
        width: 423,
        height: 527,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pic2),
            //fit: BoxFit.fill,
          ),
        ),
      );
    }
    if (MediaQuery.of(context).size.width < 1277) {
      return Container(
        width: 540.5,
        height: 673,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pic2),
            //fit: BoxFit.fill,
          ),
        ),
      );
    } else {
      return Container(
        width: 423.0,
        height: 527.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pic2),
            //fit: BoxFit.fill,
          ),
        ),
      );
    }
  }
}

class GetStartedSection extends StatelessWidget {
  const GetStartedSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth;
    double screenWidthFunc(BuildContext context) =>
        MediaQuery.of(context).size.width;
    screenWidth = screenWidthFunc(context);
    if (screenWidth < kTabletScreen) {
      return Container(
        constraints: BoxConstraints(
          minWidth: screenWidth - 40,
        ),
        decoration: BoxDecoration(
          color: kMainColour,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 48, bottom: 24, left: 8, right: 8),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    bottom: 32,
                    left: 16,
                    right: 16,
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 30,
                      color: kBackgroundColour,
                    ),
                  )),
              Column(
                children: const [
                  BuyCoinsButton(
                    text: 'Buy Bitcoin',
                    cryptoIcon: CryptoFontIcons.BTC,
                    color: Color(0xffff9900),
                  ),
                  SizedBox(height: 16),
                  BuyCoinsButton(
                    text: 'Buy Tether',
                    cryptoIcon: CryptoFontIcons.USDT,
                    color: Color(0xFF26a17a),
                  ),
                  SizedBox(height: 16),
                  BuyCoinsButton(
                    text: 'Buy Binance Coin',
                    cryptoIcon: CryptoFontIcons.BSD,
                    color: Color(0xFFf3ba2f),
                  ),
                  SizedBox(height: 16),
                  BuyCoinsButton(
                    text: 'Buy Ethereum',
                    cryptoIcon: CryptoFontIcons.ETH,
                    color: Color(0xFF627dea),
                  ),
                  SizedBox(height: 16),
                  BuyCoinsButton(
                    text: 'Buy Litecoin',
                    cryptoIcon: CryptoFontIcons.LTC,
                    color: Color(0xffbfbbbb),
                  ),
                  SizedBox(height: 16),
                  BuyCoinsButton(
                    text: 'Buy Solana',
                    cryptoIcon: CryptoFontIcons.SLS,
                    color: Color(0xff000000),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
    if (screenWidth < kSmallScreen) {
      return Container(
        constraints: BoxConstraints(
          minWidth: screenWidth - 40,
        ),
        decoration: BoxDecoration(
          color: kMainColour,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 48, bottom: 24, left: 8, right: 8),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    bottom: 32,
                    left: 16,
                    right: 16,
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 30,
                      color: kBackgroundColour,
                    ),
                  )),
              SizedBox(
                //width: 600,
                //height: 188,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: const [
                        BuyCoinsButton(
                          text: 'Buy Bitcoin',
                          cryptoIcon: CryptoFontIcons.BTC,
                          color: Color(0xffff9900),
                        ),
                        SizedBox(height: 16),
                        BuyCoinsButton(
                          text: 'Buy Tether',
                          cryptoIcon: CryptoFontIcons.USDT,
                          color: Color(0xFF26a17a),
                        ),
                        SizedBox(height: 16),
                        BuyCoinsButton(
                          text: 'Buy Binance Coin',
                          cryptoIcon: CryptoFontIcons.BSD,
                          color: Color(0xFFf3ba2f),
                        ),
                      ],
                    ),
                    const SizedBox(width: 16),
                    Column(
                      children: const [
                        BuyCoinsButton(
                          text: 'Buy Ethereum',
                          cryptoIcon: CryptoFontIcons.ETH,
                          color: Color(0xFF627dea),
                        ),
                        SizedBox(height: 16),
                        BuyCoinsButton(
                          text: 'Buy Litecoin',
                          cryptoIcon: CryptoFontIcons.LTC,
                          color: Color(0xffbfbbbb),
                        ),
                        SizedBox(height: 16),
                        BuyCoinsButton(
                          text: 'Buy Solana',
                          cryptoIcon: CryptoFontIcons.SLS,
                          color: Color(0xff000000),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        constraints: BoxConstraints(
          minWidth: screenWidth - 40,
        ),
        decoration: BoxDecoration(
          color: kMainColour,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 48, bottom: 24, left: 8, right: 8),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    bottom: 32,
                    left: 16,
                    right: 16,
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 36,
                      color: kBackgroundColour,
                    ),
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      BuyCoinsButton(
                        text: 'Buy Bitcoin',
                        cryptoIcon: CryptoFontIcons.BTC,
                        color: Color(0xffff9900),
                      ),
                      SizedBox(width: 22),
                      BuyCoinsButton(
                        text: 'Buy Ethereum',
                        cryptoIcon: CryptoFontIcons.ETH,
                        color: Color(0xFF627dea),
                      ),
                      SizedBox(width: 22),
                      BuyCoinsButton(
                        text: 'Buy Tether',
                        cryptoIcon: CryptoFontIcons.USDT,
                        color: Color(0xFF26a17a),
                      ),
                    ],
                  ),
                  const SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      BuyCoinsButton(
                        text: 'Buy Litecoin',
                        cryptoIcon: CryptoFontIcons.LTC,
                        color: Color(0xffbfbbbb),
                      ),
                      SizedBox(width: 22),
                      BuyCoinsButton(
                        text: 'Buy Binance Coin',
                        cryptoIcon: CryptoFontIcons.BSD,
                        color: Color(0xFFf3ba2f),
                      ),
                      SizedBox(width: 22),
                      BuyCoinsButton(
                        text: 'Buy Solana',
                        cryptoIcon: CryptoFontIcons.SLS,
                        color: Color(0xff000000),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
}

class CopyrightText extends StatelessWidget {
  const CopyrightText({Key? key}) : super(key: key);

  final TextStyle _kCopyrightFontStyle =
      const TextStyle(fontSize: 12, color: Color(0xFF999999));
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Copyright 2022 Moon Pay Limited. All rights reserved.',
            style: _kCopyrightFontStyle),
        Text(
            'MoonPay USA LLC is a registered money service business (NMLS ID: 2071245).',
            style: _kCopyrightFontStyle),
        Text(
            'For Law Enforcement requests please direct your official document to our compliance team here.',
            style: _kCopyrightFontStyle),
      ],
    );
  }
}

class SubscribeForm extends StatelessWidget {
  const SubscribeForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth;
    double screenWidthFunc(BuildContext context) =>
        MediaQuery.of(context).size.width;
    screenWidth = screenWidthFunc(context);
    if (screenWidth < 960) {
      return Column(children: [
        Text(
          'Subscribe to our newsletter',
          style: TextStyle(
            fontSize: 16,
            color: kBackgroundColour,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 22,
        ),
        Row(
          children: [
            Text(
              'Email',
              style: TextStyle(
                fontSize: 16,
                color: kBackgroundColour,
              ),
            ),
            const Text(
              '*',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFCD4262),
              ),
            ),
            Expanded(child: Container())
          ],
        ),
        TextField(
            cursorColor: kBackgroundColour,
            style: TextStyle(fontSize: 20, color: kBackgroundColour),
            decoration: InputDecoration(
                focusColor: kBackgroundColour,
                fillColor: const Color(0xff5d5d5d),
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                ))),
        const SizedBox(
          height: 22,
        ),
        Row(
          children: [
            Theme(
              data: Theme.of(context).copyWith(
                unselectedWidgetColor: kBackgroundColour,
                primaryColor: kBackgroundColour,
              ),
              child: Checkbox(
                checkColor: kBackgroundColour,
                activeColor: kBackgroundColour,
                value: false,
                onChanged: (value) {},
                shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.5),
                    borderRadius: BorderRadius.circular(4)),
              ),
            ),
            const Flexible(
              child: Text(
                'Check this box to receive communications from MoonPay.'
                'You can unsubscribe at any time. We look after your data '
                '- see our privacy policy.*',
                softWrap: true,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFCCCCCC),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 22,
        ),
        MaterialButton(
          onPressed: () {},
          color: kBackgroundColour,
          shape:
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)),
          child: SizedBox(
              width: 860,
              height: 58.0,
              child: Center(
                  child: Text(
                'Subscribe',
                style: TextStyle(
                  fontSize: 20.0,
                  color: kBlackColour,
                ),
              ))),
        ),
        const SizedBox(
          height: 22,
        ),
      ]);
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Subscribe to our newsletter',
            style: TextStyle(
              fontSize: 16,
              color: kBackgroundColour,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                  color: kBackgroundColour,
                ),
              ),
              const Text(
                '*',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFCD4262),
                ),
              ),
            ],
          ),
          SizedBox(
            child: TextField(
                cursorColor: kBackgroundColour,
                style: TextStyle(fontSize: 20, color: kBackgroundColour),
                decoration: InputDecoration(
                    focusColor: kBackgroundColour,
                    fillColor: const Color(0xFF5D5D5D),
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    ))),
          ),
          const SizedBox(height: 24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: MaterialButton(
                  onPressed: () {},
                  color: kBackgroundColour,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32.0,
                      vertical: 16.0,
                    ),
                    child: SizedBox(
                        width: 163.5,
                        height: 26.0,
                        child: Center(
                            child: Text(
                          'Subscribe',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: kBlackColour,
                          ),
                        ))),
                  ),
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Theme(
                      data: Theme.of(context).copyWith(
                        unselectedWidgetColor: kBackgroundColour,
                        primaryColor: kBackgroundColour,
                      ),
                      child: SizedBox(
                        width: 22,
                        height: 22,
                        child: Checkbox(
                          checkColor: kBackgroundColour,
                          activeColor: kBackgroundColour,
                          value: false,
                          onChanged: (value) {},
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(width: 0.5),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Expanded(
                      child: Text(
                        'Check this box to receive communications from MoonPay.'
                        'You can unsubscribe at any time. We look after your data '
                        '- see our privacy policy.*',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFCCCCCC),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
    }
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
    if (screenWidth < 384) {
      return Column(
        children: [
          const SizedBox(height: 40),
          Card(
            shadowColor: kMainColour,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            elevation:0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                //width: 352,
                width: screenWidth,
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
                          color: kTextFieldColour,
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
    if (screenWidth < 670) {
      return Column(
        children: [
          const SizedBox(height: 40),
          Card(
            shadowColor: kMainColour,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            elevation:0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
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
    } else {
      return Column(
        children: [
          const SizedBox(height: 80),
          Container(
            decoration: BoxDecoration(
              color:kBackgroundColour,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(125,0,255,0.20),
                  blurRadius: 30.0,
                  spreadRadius:0.0,
                ),
              ],
              borderRadius: BorderRadius.circular(24.0),
            ),
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
                        onPressed: () {
                          Get.toNamed("/third");
                        },
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                  const SizedBox(height: 20,),
            Text(
              'Quick buy',
              style: TextStyle(
                fontSize: 16,
                color: kBackgroundColour,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height:20
            ),
            const BuyCryptoPageFooterButtonsWrap(),
            const SizedBox(
              height:40
            ),
            Container(
              height:1,
              decoration: BoxDecoration(
              color:kBackgroundColour,
            ),)
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
                const SizedBox(
              height:40
            ),
                Text(
              'Quick buy',
              style: TextStyle(
                fontSize: 16,
                color: kBackgroundColour,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height:20
            ),
            const BuyCryptoPageFooterButtonsWrap(),
            const SizedBox(
              height:40
            ),
            Container(
              height:1,
              decoration: BoxDecoration(
              color:kBackgroundColour,
            ),)
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
                const SizedBox(
              height:40
            ),
                Text(
              'Quick buy',
              style: TextStyle(
                fontSize: 16,
                color: kBackgroundColour,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height:20
            ),
            const BuyCryptoPageFooterButtonsWrap(),
            const SizedBox(
              height:40
            ),
            Container(
              height:1,
              decoration: BoxDecoration(
              color:kBackgroundColour,
            ),)
              ]),
        ),
      );
    }
  }
}
class BuyCryptoPageNavBar extends StatelessWidget {
  const BuyCryptoPageNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth;
    double screenWidthFunc(BuildContext context) =>
        MediaQuery.of(context).size.width;
    screenWidth = screenWidthFunc(context);
    if (screenWidth < 1023) {
      return SizedBox(
        width: screenWidth - 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NavBarLogo(),
            Expanded(
              child: Container(),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                // Icons.menu_outlined,
                FontAwesomeIcons.bars,
                size: 22,
              ),
            )
          ],
        ),
      );
    }
    if (screenWidth < 1280) {
      return SizedBox(
        width: screenWidth - 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NavBarLogo(),
            const BuyCryptoPageNavBarDoubleButton(),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                NavBarButton(text: 'About Us'),
                NavBarButton(text: 'Career'),
                NavBarButton(text: 'Blog'),
                NavBarButton(text: 'Help Center'),
              ],
            ),
          ],
        ),
      );
    } else {
      return SizedBox(
        width: screenWidth - 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NavBarLogo(),
            const BuyCryptoPageNavBarDoubleButton(),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                NavBarButton(text: 'About Us'),
                NavBarButton(text: 'Career'),
                NavBarButton(text: 'Blog'),
                NavBarButton(text: 'Help Center'),
              ],
            ),
          ],
        ),
      );
    }
  }
}
class AddressPageBody extends StatelessWidget {
  const AddressPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth;
    double screenWidthFunc(BuildContext context) =>
        MediaQuery.of(context).size.width;
    screenWidth = screenWidthFunc(context);
    if (screenWidth < 384) {
      return Column(
        children: [
          const SizedBox(height: 20),
          Card(
            shadowColor: kMainColour,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            elevation:0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                //width: 352,
                width: screenWidth,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.navigate_before_outlined,
                          ),
                          SizedBox(width: 10),
                          SelectableText(
                            'Enter card billing address',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Sf',
                            ),
                          ),],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Theme(
                      data: Theme.of(context).copyWith(
                        //unselectedWidgetColor: kBackgroundColour,
                        primaryColor: kMainColour,
                      ),
                      child: SizedBox(
                        width: 22,
                        height: 22,
                        child: Checkbox(
                          checkColor: kMainColour,
                          activeColor: kBackgroundColour,
                          value: true,
                          onChanged: (value) {},
                          side: BorderSide(
                                width: 1,
                                color: kMainColour,
                              ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                    ),
                    const SizedBox(width:12),
                    const Text('Use the address I have on file'),]
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Address',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Sf',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff505052)),
                      ),
                      const SizedBox(height: 8),
                      const kMyTextField(placeholder:'P.O. Box2032 Nairobi'),const SizedBox(height: 30),
                      const Text(
                        'Address 2 (optional)',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Sf',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff505052)),
                      ),
                      const SizedBox(height: 8),
                      const kMyTextField(placeholder:''),const SizedBox(height: 30),
                      Row(
                        children:[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:const [
                                Text(
                        'City',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Sf',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff505052)),
                      ),
                      SizedBox(height: 8),
                      kMyTextField(placeholder:'Nairobi'),
                              ]
                            ),
                          ),
                          const SizedBox(width:20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                        'Postcode',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Sf',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff505052)),
                      ),
                      SizedBox(height: 8),
                      kMyTextField(placeholder:'00100'),
                              ]
                            ),
                          ),
                        
                        ]
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Country',
                        style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Sf',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff505052)),
                      ),
                      const SizedBox(height: 8),
                      const kMyTextField(placeholder:'Kenya'),
                      const SizedBox(
                        // height: MediaQuery.of(context).size.height / 15,
                        height: 20,
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
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          const TinyLandingText(),
          const SizedBox(height: 26),
        ],
      );
    } 
    if (screenWidth < 670) {
      return Column(
        children: [
          const SizedBox(height: 20),
          Card(
            shadowColor: kMainColour,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0),
            ),
            elevation:0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 352,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.navigate_before_outlined,
                          ),
                          SizedBox(width: 10),
                          SelectableText(
                            'Enter card billing address',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Sf',
                            ),
                          ),],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Theme(
                      data: Theme.of(context).copyWith(
                        //unselectedWidgetColor: kBackgroundColour,
                        primaryColor: kMainColour,
                      ),
                      child: SizedBox(
                        width: 22,
                        height: 22,
                        child: Checkbox(
                          checkColor: kMainColour,
                          activeColor: kBackgroundColour,
                          value: true,
                          onChanged: (value) {},
                          side: BorderSide(
                                width: 1,
                                color: kMainColour,
                              ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                    ),
                    const SizedBox(width:12),
                    const Text('Use the address I have on file'),]
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Address',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Sf',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff505052)),
                      ),
                      const SizedBox(height: 8),
                      const kMyTextField(placeholder:'P.O. Box 2032 Nairobi'),
                      const SizedBox(height: 30),
                      const Text(
                        'Address 2 (optional)',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Sf',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff505052)),
                      ),
                      const SizedBox(height: 8),
                      const kMyTextField(placeholder:''),
                      const SizedBox(height: 30),
                      Row(
                        children:[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'City',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Sf',
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff505052)),
                                ),
                                SizedBox(height: 8),
                                kMyTextField(placeholder:'Nairobi'),
                                
                              ]
                            ),
                          ),
                          const SizedBox(width:20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Postcode',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Sf',
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff505052)),
                                ),
                                SizedBox(height: 8),
                                kMyTextField(placeholder:'00100'),
                                
                              ]
                            ),
                          ),
                        
                        ]
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Country',
                        style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Sf',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff505052)),
                      ),
                      const SizedBox(height: 8),
                      const kMyTextField(placeholder:'Kenya'),
                      const SizedBox(
                        // height: MediaQuery.of(context).size.height / 15,
                        height: 20,
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
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          const TinyLandingText(),
          const SizedBox(height: 26),
        ],
      );
    } else {
      return Column(
        children: [
          const SizedBox(height: 45),
          Container(
            decoration: BoxDecoration(
              color:kBackgroundColour,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(125,0,255,0.20),
                  blurRadius: 30.0,
                  spreadRadius:0.0,
                ),
              ],
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: SizedBox(
                width: 352,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.navigate_before_outlined,
                          ),
                          SizedBox(width: 10),
                          SelectableText(
                            'Enter card billing address',
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Sf',
                            ),
                          ),],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Theme(
                      data: Theme.of(context).copyWith(
                        //unselectedWidgetColor: kBackgroundColour,
                        primaryColor: kMainColour,
                      ),
                      child: SizedBox(
                        width: 22,
                        height: 22,
                        child: Checkbox(
                          checkColor: kMainColour,
                          activeColor: kBackgroundColour,
                          value: true,
                          onChanged: (value) {},
                          side: BorderSide(
                                width: 1,
                                color: kMainColour,
                              ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ),
                    ),
                    const SizedBox(width:12),
                    const Text('Use the address I have on file'),]
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Address',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Sf',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff505052)),
                      ),
                      const SizedBox(height: 8),
                      const kMyTextField(placeholder:'P.O.Box 2032 Nairobi'),const SizedBox(height: 30),
                      const Text(
                        'Address 2 (optional)',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Sf',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff505052)),
                      ),
                      const SizedBox(height: 8),
                      const kMyTextField(placeholder:''),const SizedBox(height: 30),
                      Row(
                        children:[
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                const Text(
                        'City',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Sf',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff505052)),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                      cursorColor: Colors.black12,
                      cursorWidth: 1,
                      decoration: InputDecoration(
                        hintText: ('Nairobi'), //hint text
                        hintStyle: const TextStyle(fontSize: 16, fontFamily: 'Sf'),
                        //focusColor: kMainColour,
                        fillColor: const Color(0xfff3f4f5),
                        filled: true,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: kMainColour,
                          ),
                            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                          ),
                        ),
                      ),
                      
                              ]
                            ),
                          ),
                          const SizedBox(width:20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                const Text(
                        'Postcode',
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Sf',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff505052)),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                      cursorColor: Colors.black12,
                      cursorWidth: 1,
                      decoration: InputDecoration(
                        hintText: ('00100'), //hint text
                        hintStyle: const TextStyle(fontSize: 16, fontFamily: 'Sf'),
                        //focusColor: kMainColour,
                        fillColor: const Color(0xfff3f4f5),
                        filled: true,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: kMainColour,
                          ),
                            borderRadius: const BorderRadius.all(Radius.circular(12.0)),
                          ),
                        ),
                      ),
                      
                              ]
                            ),
                          ),
                        
                        ]
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Country',
                        style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Sf',
                      fontWeight: FontWeight.bold,
                      color: Color(0xff505052)),
                      ),
                      const SizedBox(height: 8),
                      const kMyTextField(placeholder:'Kenya'),const SizedBox(
                        // height: MediaQuery.of(context).size.height / 15,
                        height: 20,
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
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 54),
          const TinyLandingText(),
          const SizedBox(height: 56),
        ],
      );
    }
  }
}

