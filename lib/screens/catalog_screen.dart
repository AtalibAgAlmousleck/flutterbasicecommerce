// ignore_for_file: use_key_in_widget_constructors

import 'package:anorshop/models/category_model.dart';
import 'package:anorshop/models/product_model.dart';
import 'package:anorshop/widgeets/custom_app_bar.dart';
import 'package:anorshop/widgeets/product_card.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (context) => CatalogScreen(category: category));
  }

  final Category category;

  CatalogScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProduct = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
        appBar: CustomAppBar(
          title: category.name,
        ),
        body: GridView.builder(
            padding: EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.15),
            itemCount: categoryProduct.length,
            itemBuilder: (context, index) {
              return Center(
                  child: ProductCard(
                product: categoryProduct[index],
                widgetFactor: 2.2,
              ));
            }));
  }
}
