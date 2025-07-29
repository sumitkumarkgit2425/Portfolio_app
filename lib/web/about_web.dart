import 'package:flutter/material.dart';
import 'package:portfolio_app/components.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({Key? key}) : super(key: key);

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    // Get the width of the device
    var widthDevice = MediaQuery.of(context).size.width;

    return Scaffold(
      // Drawer for navigation
      drawer: const DrawersWeb(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(size: 25.0, color: Colors.black),
        title: const TabsWebList(),
      ),
      body: ListView(
        children: [
          // About me section
          SizedBox(
            height: 500.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SansBold("About me", 40.0),
                    const SizedBox(height: 15.0),
                    const Sans(
                      "Hi! I'm Sumit Kushwaha. I specialize in Flutter development",
                      15.0,
                    ),
                    const Sans(
                      "I aim to deliver exceptional performance paired with cutting-edge security across Android, iOS, Web, macOS, and Linux platforms.",
                      15.0,
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        OrangeContainer("Flutter"),
                        const SizedBox(width: 7.0),
                        OrangeContainer("Firebase"),
                        const SizedBox(width: 7.0),
                        OrangeContainer("Android"),
                        const SizedBox(width: 7.0),
                        OrangeContainer("iOS"),
                        const SizedBox(width: 7.0),
                        OrangeContainer("Windows"),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147.0,
                  backgroundColor: const Color(0xFFFF7043),
                  child: CircleAvatar(
                    radius: 143.0,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140.0,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        "assets/img5.png",

                        filterQuality: FilterQuality.high,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),

          // Web development section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AnimatedCard(
                imagePath: "assets/webL.png",
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: const [
                    SansBold("Web development", 30.0),
                    SizedBox(height: 15.0),
                    Sans(
                      "I help establish your digital presence through modern, high-performance web applications.",
                      15.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),

          // App development section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: const [
                    SansBold("App development", 30.0),
                    SizedBox(height: 15.0),
                    Sans(
                      "Looking for a fast, responsive, and visually stunning app? Relax — I’ll take care of it for you.",
                      15.0,
                    ),
                  ],
                ),
              ),
              const AnimatedCard(
                imagePath: "assets/app.png",
                height: 250.0,
                width: 250.0,
                reverse: true,
              ),
            ],
          ),
          const SizedBox(height: 20.0),

          // Back-end development section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const AnimatedCard(
                imagePath: "assets/firebase.png",
                height: 250.0,
                width: 250.0,
              ),
              SizedBox(
                width: widthDevice / 3,
                child: Column(
                  children: const [
                    SansBold("Back-end development", 30.0),
                    SizedBox(height: 15.0),
                    Sans(
                      "Want a back-end that’s both scalable and secure? Let’s connect and explore how I can support your goals.",
                      15.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
