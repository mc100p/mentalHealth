import 'package:flutter/material.dart';
import 'package:mentalhealth/pages/calender.dart/calender.dart';
import 'package:mentalhealth/pages/homepage/homecontent.dart';
import 'package:mentalhealth/pages/message/message.dart';
import 'package:mentalhealth/pages/profile/profile.dart';
import 'package:mentalhealth/utils/custom_icons_icons.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TabBarView(
            children: [
              HomeContent(),
              Message(),
              Calender(),
              Profile(),
            ],
            controller: tabController,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20),
                  child: TabBar(
                    controller: tabController,
                    indicatorColor: Colors.transparent,
                    unselectedLabelColor: Colors.grey[110],
                    tabs: [
                      icons(CustomIcons.homepage),
                      icons(CustomIcons.messenger),
                      icons(CustomIcons.calendar),
                      icons(CustomIcons.user),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget icons(IconData icon) {
    return Icon(icon, size: 18.0);
  }
}
