import 'package:flutter/material.dart';
import 'package:mentalhealth/utils/custom_widgets.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        text('Information', context),
        widthSpacer(),
        widthSpacer(),
        text('Medicine', context),
        widthSpacer(),
        widthSpacer(),
        text('Diagnoses', context),
      ],
    );
  }

  Widget text(String text, BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 20,
          color: text == 'Information' ? Theme.of(context).primaryColor : null,
          fontWeight: FontWeight.w400),
    );
  }
}
