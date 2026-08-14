import 'package:flutter/material.dart';
import 'package:thaimart_exam_app/src/widgets/bases/palette_theme.dart';

class CoinCard extends StatelessWidget {
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1 / 1,
            child: SizedBox(
              width: double.infinity,
              child: ColoredBox(color: primarySwatch.shade500),
            ),
          ),
          // Image.network(
          //   'https://cdn.coinranking.com/bOabBYkcX/bitcoin_btc.svg',
          //   alignment: AlignmentGeometry.center,
          //   fit: BoxFit.cover,
          //   height: 100,
          // ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Test',
                  style: TextStyle(fontWeight: FontWeight(600)),
                ),
                const Text('Hello world'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
