import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mentalhealth/model/client_data.dart';
import 'package:mentalhealth/utils/custom_widgets.dart';
import 'package:mentalhealth/utils/magic_string.dart';

class UpcomingSession extends StatelessWidget {
  const UpcomingSession({super.key, required this.scrollController});

  final ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    return indent(
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Text("Upcoming Sessions",
                  style:
                      TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600)),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  shrinkWrap: true,
                  itemCount: clients.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Expanded(child: clientsWidget(clients[index], context)),
                      ],
                    );
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget clientsWidget(ClientData clientData, BuildContext context) {
    return InkWell(
      onTap: () =>
          context.pushNamed('${RouteNames.sessionInfo}', extra: clientData),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 179, 166, 166).withOpacity(0.1),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipOval(
                    child: Image(
                  image: AssetImage(clientData.imgUrl),
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${clientData.firstName} ' + '${clientData.lastName}',
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
                    SizedBox(height: 50),
                    Text(
                      clientData.date,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                clientData.completed == true
                    ? Icon(
                        Icons.check_box_rounded,
                        color: Theme.of(context).primaryColor,
                      )
                    : Icon(Icons.check_box_outline_blank)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
