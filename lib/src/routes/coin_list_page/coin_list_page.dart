import 'package:flutter/material.dart';
import 'package:thaimart_exam_app/src/widgets/coin_card/coin_card.dart';

class CoinListPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Coins')),
      body: Column(children: [CoinCard()]),
    );
  }
}
