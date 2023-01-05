import 'package:flutter/material.dart';
import 'package:mentalhealth/model/client_data.dart';

class Section2 extends StatelessWidget {
  const Section2({
    Key? key,
    required this.clientData,
  }) : super(key: key);

  final ClientData clientData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0),
      child: Row(
        children: [
          ClipOval(
              child: Image(
            image: AssetImage(clientData.imgUrl),
            fit: BoxFit.cover,
            height: 80,
            width: 80,
          )),
          widthSpacer(),
          widthSpacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${clientData.firstName} ${clientData.lastName}',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text('${clientData.age} yo'),
                  widthSpacer(),
                  Text('•'),
                  widthSpacer(),
                  Text('Depression'),
                  widthSpacer(),
                  Text('•'),
                  widthSpacer(),
                  Text(clientData.prescription == true
                      ? 'Takes meds'
                      : 'No meds'),
                ],
              ),
              SizedBox(height: 20),
              Text(
                clientData.date,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 13.0),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget widthSpacer() {
    return SizedBox(width: 7.0);
  }
}
