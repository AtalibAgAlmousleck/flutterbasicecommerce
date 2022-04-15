// ignore_for_file: use_key_in_widget_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:anorshop/models/model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../widgeets/custom_app_bar.dart';
import '../widgeets/custom_nav_bar.dart';
import '../widgeets/hero_carousel_card.dart';
import '../widgeets/product_carousel.dart';
import '../widgeets/section_title.dart';

class MyHomePage extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => MyHomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'AnorExpress',
      ),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: <Widget>[
         CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.8,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: Category.categories
                  .map((category) => HeroCarouselCard(category: category))
                  .toList(),
            ),
        

          // Product card
          // ProductCard(
          //   product: Product.products[0],
          // )
          SectionTitle(
            title: 'RECOMMENDED',
          ),
          ProductCarousel(
            products: Product.products
                .where((product) => product.isRecommended)
                .toList(),
          ),

          SectionTitle(
            title: 'MOST POPULAR',
          ),
          ProductCarousel(
            products: Product.products
                .where((product) => product.isRecommended)
                .toList(),
          ),
        ],
      ),
    );
  }
}
