import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moonpay_clone/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moonpay_clone/pages/buy_crypto_page.dart';

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
      onPressed: () {
        Get.toNamed("/second");
      },
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

class NavBarDoubleButton extends StatelessWidget {
  const NavBarDoubleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double horizontalPadding = 20;
    double verticalPadding = 16;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        MaterialButton(
          elevation: 0,
          onPressed: () {
            Get.toNamed("/second");
          },
          color: kBackgroundColour,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            child: Text(
              'Buy Crypto',
              style: TextStyle(fontSize: 16.0, color: kBlackColour),
            ),
          ),
        ),
        MaterialButton(
          elevation: 0,
          onPressed: () {},
          color: kBackgroundColour,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: verticalPadding,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Business',
                  style: TextStyle(fontSize: 16.0, color: kBlackColour),
                ),
                const Icon(
                  Icons.arrow_drop_down_outlined,
                ),
              ],
            ),
          ),
        )
      ],
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
          horizontal: 20,
          vertical: 16,
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 16.0, color: kBlackColour),
        ),
      ),
    );
  }
}

class FooterLinkButton extends StatefulWidget {
  const FooterLinkButton({Key? key, required this.text}) : super(key: key);

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
      cursor: SystemMouseCursors.click,
      child: Text(
        widget.text,
        style: TextStyle(fontSize: 14, color: textColor),
      ),
    );
  }
}

class BuyCryptoTextfield extends StatelessWidget {
  const BuyCryptoTextfield({
    Key? key,
    required this.placeholder,
    required this.currency,
    required this.image,
  }) : super(key: key);
  final String placeholder;
  final String currency;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        TextField(
          style: const TextStyle(
            fontSize: 16,
            
          ),
          cursorColor: Colors.black12,
          cursorWidth: 1,
          decoration: InputDecoration(
            hintText: (placeholder), //hint text
            hintStyle: const TextStyle(fontSize: 16, 
            fontFamily: 'Sf'),
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
        Container(
          width: 144,
          height: 53,
          decoration: const BoxDecoration(
            color: Color(0xffe9ebec),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: MaterialButton(
            onPressed: () {},
            child: Row(
              children: [
                SizedBox(width: 6),
                Container(
                  height: 24.8,
                  width: 24.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.4),
                    image: DecorationImage(
                      image: AssetImage(image),
                      // fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  currency,
                  style: const TextStyle(
                      fontSize: 17, fontFamily: 'Sf', 
                      
                      ),
                ),
                const SizedBox(width: 20),
                const Icon(
                  Icons.expand_more_outlined,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

