import 'package:ecomme/view/screen/Favorite/Favoritepage.dart';
import 'package:ecomme/view/screen/cart_page/cartpage.dart';
import 'package:flutter/material.dart';

import '../../view/screen/home_page/detail_page/detail_page.dart';
import '../../view/screen/home_page/home_page/home_page.dart';

class Routes {
  static String home_page = '/';
  static String detail_page = 'detail_page';
  static String cart_page = 'cart_page';
  static String likePage = 'likePage';
  static String favPage = 'favPage';

  static Map<String, WidgetBuilder> myRoutes = {
    home_page: (context) => const HomePage(),
    detail_page: (context) => const DetailsPage(),
    cart_page: (context) => const CartPage(),
    favPage: (context) => const FavPage(),
  };
}
