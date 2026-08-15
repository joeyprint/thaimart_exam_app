import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:thaimart_exam_app/routes/coin_list_page/widgets/coin_list_tile.dart';

class CoinListPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Coins')),
      body: ListView(
        children: [
          CoinListTile(
            title: 'Bitcoin',
            onTap: () => Get.toNamed('/coins/1/details'),
          ),
          CoinListTile(title: 'Coin'),
          CoinListTile(title: 'XyzCoin'),
          CoinListTile(title: 'Bigcoin'),
          CoinListTile(title: 'Maxcoin'),
          CoinListTile(title: 'Yellowcoin'),
          CoinListTile(title: 'Dogecoin'),
          CoinListTile(title: 'Bitcoin'),
          CoinListTile(title: 'Coin'),
          CoinListTile(title: 'XyzCoin'),
          CoinListTile(title: 'Bigcoin'),
          CoinListTile(title: 'Maxcoin'),
          CoinListTile(title: 'Yellowcoin'),
          CoinListTile(title: 'Dogecoin'),
        ],
      ),
    );
  }
}
