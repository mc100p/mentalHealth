import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        child: Row(
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemExtent: 85.0,
                children: [
                  customTiles("9", "Wed"),
                  customTiles("10", "Thu"),
                  actualDate("11", "Fri", context),
                  customTiles("12", "Sat"),
                  customTiles("13", "Sun"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customTiles(String date, String day) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.all(15.5),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 179, 166, 166).withOpacity(0.1),
              borderRadius: BorderRadius.circular(13),
            ),
            child: Text(
              date.toString(),
              style: TextStyle(fontWeight: FontWeight.w600),
            )),
        SizedBox(height: 5),
        Text(
          day,
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget actualDate(String date, String day, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 179, 166, 166).withOpacity(0.13),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Text(
                  date.toString(),
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(height: 5),
            Text(
              day,
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
