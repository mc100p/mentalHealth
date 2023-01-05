import 'package:flutter/material.dart';
import 'package:mentalhealth/model/client_data.dart';
import 'package:mentalhealth/pages/sessionInfo/categories.dart';
import 'package:mentalhealth/pages/sessionInfo/section_1.dart';
import 'package:mentalhealth/pages/sessionInfo/section_2.dart';
import 'package:mentalhealth/pages/sessionInfo/section_3.dart';
import 'package:mentalhealth/pages/sessionInfo/section_4.dart';
import 'package:mentalhealth/pages/sessionInfo/section_5.dart';

class SessionInfo extends StatelessWidget {
  const SessionInfo({super.key, required this.clientData});

  final ClientData clientData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 80),
          child: Column(
            children: [
              Section1(),
              Section2(clientData: clientData),
              Section3(clientData: clientData),
              Categories(),
              Section4(clientData: clientData),
              Section5(clientData: clientData),
            ],
          ),
        ),
      ),
    );
  }
}
