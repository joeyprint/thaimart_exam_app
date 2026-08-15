import 'package:flutter/material.dart';
import 'package:thaimart_exam_app/src/routes/coin_list_page/coin_list_page.dart';
import 'package:thaimart_exam_app/src/widgets/bases/palette_theme.dart';
import 'package:thaimart_exam_app/src/widgets/bases/typography_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ThaiMart',
      theme: ThemeData(
        primaryColor: primaryColor,
        primarySwatch: primarySwatch,
        colorScheme: .fromSeed(seedColor: primarySwatch),
        textTheme: textTheme,
      ),
      home: CoinListPage(),
    );
  }
}
