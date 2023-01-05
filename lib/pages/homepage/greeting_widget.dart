import 'package:flutter/material.dart';
import 'package:mentalhealth/utils/custom_widgets.dart';

class GreetingWidget extends StatelessWidget {
  const GreetingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return indent(
      Stack(
        children: [
          Positioned(
            bottom: 20.0,
            left: 0.0,
            child: Text(
              "Good morning Dr. Kim",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            child: Text(
              "You have 5 sessions today",
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.grey[400],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
