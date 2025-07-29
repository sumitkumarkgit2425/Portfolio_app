import 'package:flutter/material.dart';

import '../components.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({Key? key}) : super(key: key);

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,

        endDrawer: const DrawersMobile(),
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 400.0,
                backgroundColor: Colors.white,
                iconTheme: const IconThemeData(size: 35.0, color: Colors.black),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/mydesk.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ];
          },
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20.0),
                  const SansBold("Works", 35.0),
                  const SizedBox(height: 20.0),
                  const AnimatedCard(
                    imagePath: "assets/img.png",
                    fit: BoxFit.contain,
                    height: 150.0,
                    width: 300.0,
                  ),
                  const SizedBox(height: 30.0),
                  const SansBold("Portfolio", 20.0),
                  const SizedBox(height: 10.0),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Sans(
                      "Successfully deployed on Android, iOS, and Web, this portfolio project stands as a significant achievement. I used Flutter to craft a responsive and visually appealing UI, while leveraging Firebase for robust backend support.",
                      15.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
