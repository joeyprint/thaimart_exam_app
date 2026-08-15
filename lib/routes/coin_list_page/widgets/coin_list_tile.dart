import 'package:flutter/material.dart';
import 'package:thaimart_exam_app/widgets/bases/palette_theme.dart';
import 'package:thaimart_exam_app/widgets/bases/typography_theme.dart';

class CoinListTile extends StatelessWidget {
  final String title;
  final GestureTapCallback? onTap;

  const CoinListTile({super.key, required this.title, this.onTap});

  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        color: primarySwatch.shade100,
        child: AspectRatio(
          aspectRatio: 1 / 1,
          child: Center(child: Text('Coin Icon')),
        ),
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight(600))),
      subtitle: const Text('Description'),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text('\$12345', style: textTheme.bodyLarge),
          Text(
            '+5.5%',
            style: textTheme.bodySmall?.merge(TextStyle(color: Colors.green)),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
