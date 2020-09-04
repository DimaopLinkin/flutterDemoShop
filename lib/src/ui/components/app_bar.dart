import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.black,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.keyboard_backspace),
      onPressed: () {},
    ),
    title: Center(
      child: Text(
        "Бургер Кинг",
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.info_outline),
        onPressed: () {},
      )
    ],
  );
}