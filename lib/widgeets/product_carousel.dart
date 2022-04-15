// ignore_for_file: use_key_in_widget_constructors

import 'package:anorshop/widgeets/product_card.dart';
import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> products;
  ProductCarousel({
      required this.products
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ProductCard(product: products[index]),
          );
        },
      ),
    );
  }
}
