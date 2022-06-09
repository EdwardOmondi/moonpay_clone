import 'package:flutter/material.dart';
import 'package:moonpay_clone/constants.dart';
import 'package:moonpay_clone/pages/landing_page.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MoonPay:Buy and sell Bitcoin, Ethereum and other cryptos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: kMainFont),
      home: const LandingPage(),
    );
  }
}
