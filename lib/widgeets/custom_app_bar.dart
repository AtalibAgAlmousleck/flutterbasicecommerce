// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 5,
      //backgroundColor: Colors.transparent,
      title: Text(title),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/wish');
          },
          icon: Icon(
            Icons.favorite,
            color: Colors.red,
            size: 30,
          ),
        ),
        SizedBox(
          width: 18,
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}

//Container(
      //   color: Colors.black,
      //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //   child: Text(
      //     'AnorExpress',
      //     style: TextStyle(
      //         color: Colors.white,
      //         fontSize: 25,
      //         fontFamily: 'Avenir',
      //         fontWeight: FontWeight.bold),
      //   ),
      // ),
