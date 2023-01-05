import 'package:flutter/material.dart';
import 'package:mentalhealth/model/client_data.dart';

class Section5 extends StatelessWidget {
  const Section5({super.key, required this.clientData});

  final ClientData clientData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 179, 166, 166).withOpacity(0.1),
      ),
      child: Column(children: [
        Row(
          children: [
            Text('Additional',
                style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Text("Therapist Notes:"),
          ],
        ),
        SizedBox(height: 15),
        Wrap(
          children: [
            Text(clientData.therapistNotes == null
                ? ""
                : clientData.therapistNotes!),
          ],
        )
      ]),
    );
  }
}
