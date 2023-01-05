import 'package:flutter/material.dart';
import 'package:mentalhealth/model/client_data.dart';

class Section3 extends StatelessWidget {
  const Section3({
    Key? key,
    required this.clientData,
  }) : super(key: key);

  final ClientData clientData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Complaints',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              flex: 3,
              child: Wrap(
                children: List.from(
                  clientData.complaints.map(
                    (name) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Chip(
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        label: Text(
                          name,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 25),
      ],
    );
  }
}
