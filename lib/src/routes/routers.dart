import 'package:get/route_manager.dart';
import 'package:thaimart_exam_app/src/routes/coin_list_page/coin_list_page.dart';
import 'package:thaimart_exam_app/src/routes/coin_details_page/coin_details_page.dart';

List<GetPage<dynamic>> routers = [
  GetPage(name: '/coins/', page: () => CoinListPage()),
  GetPage(name: '/coins/:uuid/details', page: () => CoinDetailsPage()),
];
