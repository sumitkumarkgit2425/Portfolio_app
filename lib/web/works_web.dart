import 'package:flutter/material.dart';
import 'package:portfolio_app/components.dart';

/// The main widget for displaying the works section on the web.
class WorksWeb extends StatefulWidget {
  const WorksWeb({Key? key}) : super(key: key);

  @override
  State<WorksWeb> createState() => _WorksWebState();
}

class _WorksWebState extends State<WorksWeb> {
  @override
  Widget build(BuildContext context) {
    // Get the width of the device
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      // Drawer for navigation
      drawer: const DrawersWeb(),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 500.0,
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(size: 25.0, color: Colors.black),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/mydesk.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: const TabsWebList(),
            ),
          ];
        },
        body: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 30.0),
                const SansBold("Works", 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const AnimatedCard(
                      imagePath: "assets/img.png",
                      height: 200.0,
                      width: 300.0,
                    ),
                    SizedBox(
                      width: widthDevice / 3,
                      child: Column(
                        children: const [
                          SansBold("Portfolio", 30.0),
                          SizedBox(height: 15.0),
                          Sans(
                            "Successfully deployed on Android, iOS, and Web, this portfolio project stands as a significant achievement. I used Flutter to craft a responsive and visually appealing UI, while leveraging Firebase for robust backend support.",
                            15.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
