import 'package:flutter/material.dart';

Widget indent(Widget child) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 18.0),
    child: child,
  );
}

Widget widthSpacer() {
  return SizedBox(width: 10.0);
}

Row generalFieldProperties(String property, String field) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        property,
        style: TextStyle(fontWeight: FontWeight.w300),
      ),
      Text(field),
    ],
  );
}
