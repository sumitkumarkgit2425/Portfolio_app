import 'package:flutter/material.dart';
import 'package:portfolio_app/components.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({Key? key}) : super(key: key);

  @override
  _LandingPageMobileState createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Extend the body behind the app bar
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: const IconThemeData(size: 35.0, color: Colors.black),
        ),

        endDrawer: const DrawersMobile(),
        body: ListView(
          children: [
            Center(
              child: Container(
                width: 294, // 2 * 147 (your previous outer radius)
                height: 294,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xFFFF7043), // Orange border
                    width: 4.0,
                  ),
                ),
                child: ClipOval(
                  child: Image.asset('assets/pic1.jpg', fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: const Color(0xFFFF7043),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20.0,
                        ),
                        child: const SansBold("Hello I'm", 15.0),
                      ),
                      const SansBold("Sumit Kushwaha", 40.0),
                      const Sans("Flutter developer", 20.0),
                    ],
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 3.0,
                        children: const [
                          Icon(Icons.email),
                          Icon(Icons.call),
                          Icon(Icons.location_pin),
                        ],
                      ),
                      const SizedBox(width: 40.0),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 9.0,
                        children: const [
                          Sans("sumitkk005@gmail.com", 15.0),
                          Sans("+91 7976362058", 15.0),
                          Sans("Jaipur,India", 15.0),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 90.0),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SansBold("About me", 35.0),
                  const Sans(
                    "Hi! I'm Sumit Kushwaha. I specialize in Flutter development",
                    15.0,
                  ),
                  const Sans(
                    "I aim to deliver exceptional performance paired with cutting-edge security across Android, iOS, Web, macOS, and Linux platforms.",
                    15.0,
                  ),
                  const SizedBox(height: 10.0),
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
            const SizedBox(height: 60.0),
            // What I do section
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SansBold("What I do?", 35.0),
                AnimatedCard(
                  imagePath: "assets/webL.png",
                  text: "Web development",
                  width: 300.0,
                ),
                SizedBox(height: 35.0),
                AnimatedCard(
                  imagePath: "assets/app.png",
                  text: "App development",
                  fit: BoxFit.contain,
                  reverse: true,
                  width: 300.0,
                ),
                SizedBox(height: 35.0),
                AnimatedCard(
                  imagePath: "assets/firebase.png",
                  text: "Back-end development",
                  width: 300.0,
                ),
                SizedBox(height: 60.0),

                ContactFormMobile(),
                SizedBox(height: 20.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
