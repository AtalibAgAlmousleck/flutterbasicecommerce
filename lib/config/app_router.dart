// ignore_for_file: no_duplicate_case_values, avoid_print

import 'package:anorshop/models/category_model.dart';
import 'package:anorshop/models/product_model.dart';
import 'package:anorshop/screens/cart_screen.dart';
import 'package:anorshop/screens/catalog_screen.dart';
import 'package:anorshop/screens/my_home_page.dart';
import 'package:anorshop/screens/product_screen.dart';
import 'package:anorshop/screens/wish_list_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    // print('This is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return MyHomePage.route();
      case MyHomePage.routeName:
        return MyHomePage.route();
      //CartScreen
      case CartScreen.routeName:
        return CartScreen.route();
      //Product Screen
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      //catalog screen
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      //wish list screen
      case WishListScreen.routeName:
        return WishListScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: RouteSettings(name: '/error'),
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text('Error page'),
                centerTitle: true,
              ),
            ));
  }
}
