// ignore_for_file: use_key_in_widget_constructors

import '../widgeets/custom_app_bar.dart';
import '../widgeets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'My Cart',
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
