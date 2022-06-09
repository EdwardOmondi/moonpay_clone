import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:moonpay_clone/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 28.0,
          width: 28.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(logo),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 36.0),
          child: Text(
            'MoonPay',
            style: TextStyle(
                //letterSpacing: .5,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                fontFamily: kLogoFont),

            // style: GoogleFonts.montserrat(
            //     textStyle: const TextStyle(
            //   //letterSpacing: .5,
            //   fontSize: 26,
            //   fontWeight: FontWeight.bold,
            // )),
          ),
        ),
      ],
    );
  }
}

class BuyCryptoButton extends StatelessWidget {
  const BuyCryptoButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: kMainColour,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 28,
          vertical: 16,
        ),
        child: SizedBox(
            //width: 206.0,
            //height: 56.0,
            width: 150,
            child: Center(
                child: Text(
              'Buy Crypto',
              style: TextStyle(
                fontSize: 16.0,
                color: kBackgroundColour,
              ),
            ))),
      ),
    );
  }
}

class BuyCoinsButton extends StatelessWidget {
  const BuyCoinsButton({
    Key? key,
    required this.text,
    required this.cryptoIcon,
    required this.color,
    //required this.width,
  }) : super(key: key);
  final String text;
  final IconData cryptoIcon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    double width;
    double screenWidth;
    double screenWidthFunc(BuildContext context) =>
        MediaQuery.of(context).size.width;
    screenWidth = screenWidthFunc(context);

    screenWidth < 670
        ? width = 260
        : screenWidth < 696
            ? width = 239
            : screenWidth < 960
                ? width = 252
                : screenWidth < 1280
                    ? width = 231
                    : width = 260;

    return MaterialButton(
      onPressed: () {},
      color: kBackgroundColour,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        child: SizedBox(
          //width: 239.0,
          width: width,
          height: 28.0,
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    cryptoIcon,
                    size: 16,
                    color: kBackgroundColour,
                  ),
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: kBlackColour,
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

class SmallBuyCoinsButton extends StatelessWidget {
  const SmallBuyCoinsButton({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: kBackgroundColour,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14.0,
            color: kBlackColour,
          ),
        ),
      ),
    );
  }
}

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({Key? key, required this.fontAwesomeIcon})
      : super(key: key);
  final IconData fontAwesomeIcon;
  final double _buttonWidth = 36;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _buttonWidth,
      height: _buttonWidth,
      decoration: BoxDecoration(
        border: Border.all(
          color: kBackgroundColour,
          width: 0.6,
        ),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Center(
        widthFactor: _buttonWidth,
        heightFactor: _buttonWidth,
        child: IconButton(
          color: kBackgroundColour,
          icon: FaIcon(
            fontAwesomeIcon,
            size: 18,
            color: kBackgroundColour,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class NavBarButton extends StatelessWidget {
  const NavBarButton({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      onPressed: () {},
      color: kBackgroundColour,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 15,
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 16.0, color: kBlackColour),
        ),
      ),
    );
  }
}

class FooterLinkButton extends StatefulWidget {
   const FooterLinkButton(
      {Key? key, required this.text})
      : super(key: key);

  final String text;

  @override
  State<FooterLinkButton> createState() => _FooterLinkButtonState();
}

class _FooterLinkButtonState extends State<FooterLinkButton> {      

Color textColor = kBackgroundColour;

  void _returnTextBlack(PointerEvent details) {
    setState(() {
      textColor = kBackgroundColour;
    });
  }

  void _makeTextGrey(PointerEvent details) {
    setState(() {
      textColor = const Color(0xFF555555);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      
      onHover: _makeTextGrey,
      onExit: _returnTextBlack,
      cursor: MouseCursor.uncontrolled,
      child: Text(
        widget.text, style: TextStyle(fontSize: 14, color: textColor),),
    );
  }
}

