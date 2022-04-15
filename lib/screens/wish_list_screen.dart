// ignore_for_file: use_key_in_widget_constructors

import 'package:anorshop/models/product_model.dart';
import 'package:anorshop/widgeets/custom_app_bar.dart';
import 'package:anorshop/widgeets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../widgeets/product_card.dart';

class WishListScreen extends StatelessWidget {
  static const String routeName = '/wish';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => WishListScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Wish List',
      ),
      bottomNavigationBar: CustomNavBar(),
      body: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, childAspectRatio: 2.4),
          itemCount: Product.products.length,
          itemBuilder: (context, index) {
            return Center(
                child: ProductCard(
              product: Product.products[index],
              widgetFactor: 1.1,
              //leftPosition: 150,
              isWishlist: true,
            ));
          }),
    );
  }
}
