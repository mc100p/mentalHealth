import 'package:flutter/material.dart';
import 'package:mentalhealth/utils/custom_icons_icons.dart';

class CustomCurve extends StatelessWidget {
  const CustomCurve({super.key});

  @override
  Widget build(BuildContext context) {
    var sizeHeight = 0.0;
    var sizeWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomPaint(
                size: Size(sizeHeight, sizeWidth),
                painter: RPSCustomPainter(context),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 60.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipOval(
                      child: Image(
                    image: AssetImage('images/profile_pic.jpeg'),
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                  )),
                  Text(
                    "<    11 Feb 2021    >",
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:
                          Color.fromARGB(255, 222, 215, 215).withOpacity(0.3),
                    ),
                    child: Icon(CustomIcons.bell, color: Colors.white),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  final BuildContext context;

  RPSCustomPainter(this.context);
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Theme.of(context).primaryColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height * 0.5004714);
    path0.lineTo(0, size.height * 0.5712143);
    path0.quadraticBezierTo(size.width * 0.0819000, size.height * 0.4991000,
        size.width * 0.4166417, size.height * 0.5005000);
    path0.quadraticBezierTo(size.width * 0.6764333, size.height * 0.5010286,
        size.width, size.height * 0.7885714);
    path0.lineTo(size.width, size.height * 0.5000000);
    path0.lineTo(size.width, 0);
    path0.lineTo(size.width * 0.4947000, 0);
    path0.lineTo(0, 0);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
