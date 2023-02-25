import 'package:flutter/material.dart';

Widget appbar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'Shop',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      Text(
        'World',
        style: TextStyle(color: Colors.green),
      ),
    ],
  );
}
