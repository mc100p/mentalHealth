import 'package:flutter/material.dart';
import 'package:mentalhealth/pages/homepage/calendar.dart';
import 'package:mentalhealth/pages/homepage/custom_curve.dart';
import 'package:mentalhealth/pages/homepage/greeting_widget.dart';
import 'package:mentalhealth/pages/homepage/upcoming_session.dart';

class HomeContent extends StatelessWidget {
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: CustomCurve(),
              centerTitle: true,
              title: GreetingWidget(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 40.0),
            sliver: Calendar(),
          ),
          SliverToBoxAdapter(
              child: UpcomingSession(scrollController: scrollController)),
        ],
      ),
    );
  }
}
