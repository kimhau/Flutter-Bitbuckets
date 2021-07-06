import 'package:flutter_bitbuckets/ui/detail/detail_binding.dart';
import 'package:flutter_bitbuckets/ui/detail/detail_view.dart';
import 'package:flutter_bitbuckets/ui/home/home_binding.dart';
import 'package:flutter_bitbuckets/ui/home/home_view.dart';
import 'package:get/get.dart';
part './app_routes.dart';

abstract class AppPages {
  static const INITIAL = Routes.HOME;
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding(), children: [
      GetPage(name: Routes.DETAILS, page: () => DetailPage(), binding: DetailBinding()),
    ]),
  ];
}
