import 'package:flutter/material.dart';
import 'package:mentalhealth/model/client_data.dart';
import 'package:mentalhealth/utils/custom_widgets.dart';
import 'package:intl/intl.dart';

class Section4 extends StatelessWidget {
  const Section4({super.key, required this.clientData});
  final ClientData clientData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 23.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 179, 166, 166).withOpacity(0.1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text("General",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.w600)),
                ],
              ),
              SizedBox(height: 20),
              generalFieldProperties('First name', clientData.firstName),
              SizedBox(height: 5),
              Divider(),
              SizedBox(height: 10),
              generalFieldProperties('Last name', clientData.lastName),
              SizedBox(height: 5),
              Divider(),
              SizedBox(height: 10),
              generalFieldProperties(
                  'Date of birth',
                  DateFormat('dd MMM yyyy').format(
                      DateTime.parse(clientData.dob.toLocal().toString()))),
              SizedBox(height: 5),
              Divider(),
              SizedBox(height: 10),
              generalFieldProperties('Gender', clientData.gender),
            ],
          ),
        ),
      ),
    );
  }
}
