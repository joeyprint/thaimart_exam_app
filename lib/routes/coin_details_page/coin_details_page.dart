import 'package:flutter/material.dart';
import 'package:thaimart_exam_app/widgets/bases/palette_theme.dart';
import 'package:thaimart_exam_app/widgets/bases/typography_theme.dart';

class CoinDetailsPage extends StatelessWidget {
  const CoinDetailsPage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bitcoin')),
      body: Container(
        color: primarySwatch.shade50,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Last price"),
                    Text('\$12345', style: textTheme.headlineLarge),
                    Row(
                      spacing: 8,
                      children: [
                        Text('+5.5%', style: TextStyle(color: Colors.green)),
                        Text('Last 24 Hours'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
