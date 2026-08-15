import 'package:flutter/material.dart';
import 'package:thaimart_exam_app/src/widgets/bases/palette_theme.dart';

class CoinDetailsPage extends StatelessWidget {
  const CoinDetailsPage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bitcoin')),
      body: Container(
        color: primarySwatch.shade50,
        child: Center(child: Text('COIN DETAILS')),
      ),
    );
  }
}
