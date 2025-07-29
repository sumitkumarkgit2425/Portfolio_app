import 'package:flutter/material.dart';

import '../components.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: const IconThemeData(size: 35.0, color: Colors.black),
        ),
        endDrawer: const DrawersMobile(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              CircleAvatar(
                radius: 147.0,
                backgroundColor: const Color(0xFFFF7043),
                child: CircleAvatar(
                  radius: 143.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 150.0,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      "assets/img5.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SansBold("About me", 35.0),
                    const SizedBox(height: 10.0),
                    const Sans(
                      "Hi! I'm Sumit Kushwaha. I specialize in Flutter development",
                      15.0,
                    ),
                    const Sans(
                      "I aim to deliver exceptional performance paired with cutting-edge security across Android, iOS, Web, macOS, and Linux platforms.",
                      15.0,
                    ),
                    const SizedBox(height: 15.0),
                    Wrap(
                      spacing: 7.0,
                      runSpacing: 7.0,
                      children: [
                        OrangeContainer("Flutter"),
                        OrangeContainer("Firebase"),
                        OrangeContainer("Android"),
                        OrangeContainer("Windows"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40.0),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AnimatedCard(
                    imagePath: "assets/webL.png",
                    width: 200.0,
                  ),
                  const SizedBox(height: 30.0),
                  const SansBold("Web development", 20.0),
                  const SizedBox(height: 10.0),
                  const Sans(
                    "I help establish your digital presence through modern, high-performance web applications.",
                    15.0,
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20.0),
                  const AnimatedCard(
                    imagePath: "assets/app.png",
                    width: 200.0,
                    reverse: true,
                  ),
                  const SizedBox(height: 30.0),
                  const SansBold("App development", 20.0),
                  const SizedBox(height: 10.0),
                  const Sans(
                    "Looking for a fast, responsive, and visually stunning app? Relax — I’ll take care of it for you.",
                    15.0,
                  ),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20.0),
                  const AnimatedCard(
                    imagePath: "assets/firebase.png",
                    width: 200.0,
                  ),
                  const SizedBox(height: 30.0),
                  const SansBold("Back-end development", 20.0),
                  const SizedBox(height: 10.0),
                  const Sans(
                    "Want a back-end that’s both scalable and secure? Let’s connect and explore how I can support your goals.",
                    15.0,
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
