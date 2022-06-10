import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constants.dart';
import 'pages/buy_crypto_page.dart';
import 'pages/landing_page.dart';
import 'pages/address_page.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MoonPay:Buy and sell Bitcoin, Ethereum and other cryptos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: kMainFont),
      home: const LandingPage(),
      getPages: [
        GetPage(name: '/', page: () => const LandingPage()),
        GetPage(name: '/second', page: () => const BuyCryptoPage()),
        GetPage(name: '/third', page: () => const AddressPage()),
  ],
    );
  }
}
