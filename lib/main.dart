import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:thaimart_exam_app/routes/routers.dart';
import 'package:thaimart_exam_app/widgets/bases/palette_theme.dart';
import 'package:thaimart_exam_app/widgets/bases/typography_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ThaiMart',
      theme: ThemeData(
        primaryColor: primaryColor,
        primarySwatch: primarySwatch,
        colorScheme: .fromSeed(seedColor: primarySwatch),
        textTheme: textTheme,
      ),
      initialRoute: '/coins',
      getPages: routers,
    );
  }
}
