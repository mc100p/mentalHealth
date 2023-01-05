import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mentalhealth/utils/custom_icons_icons.dart';

class Section1 extends StatelessWidget {
  const Section1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () => context.pop(),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 222, 215, 215).withOpacity(0.3),
            ),
            child: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
          ),
        ),
        Text("Session Info", style: TextStyle(fontWeight: FontWeight.w500)),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 222, 215, 215).withOpacity(0.3),
          ),
          child: Icon(CustomIcons.edit, color: Colors.black),
        )
      ],
    );
  }
}
