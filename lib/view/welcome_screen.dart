import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controller/welcome_controller.dart';

class WelcomeScreen extends StatefulWidget {
  final WelcomeScreenController controller;

  const WelcomeScreen({Key? key, required this.controller}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  var height, width;

  int _currentIndex = 0;
  // final PageController _pageController = PageController();

  List<String> splash = [
    "images/girl.png",
    "images/splash1.png",
    "images/splash2.png",
    "images/splash3.png",
    "images/splash4.png",
  ];

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            color: const Color(0xff1f1d2b),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: height,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: height * 0.05,
                  ),
                  CarouselSlider(
                    items: splash.map((item) {
                      return Container(
                        height: height * 1,
                        width: width * 0.7,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(item),
                          ),
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      enlargeCenterPage: true,
                      aspectRatio: 16 / 12,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                  ),
                  _buildPageIndicator(),
                  SizedBox(
                    height: height * 0.09,
                  ),
                  Text(
                    "Find hotels on a"
                    "\nbudget",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontSize: width * 0.07,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur"
                    "\nadipiscing elit. Ut nullam sed eu malesuada"
                    "\nmagna eget.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  InkWell(
                    onTap: () {
                      widget.controller.navigateToHome(context);
                    },
                    child: Container(
                      height: height * 0.065,
                      width: width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.5),
                        color: const Color(0xffffb94f),
                      ),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: GoogleFonts.dmSans(
                            color: Colors.white,
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

// Existing _onPageChanged and _buildPageIndicator methods
  Future<void> _onPageChanged(int index) async {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget _buildPageIndicator() {
    List<Widget> indicators = [];

    for (int i = 0; i < splash.length; i++) {
      indicators.add(Container(
        width: 10.0,
        height: 10.0,
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentIndex == i ? Color(0xff009bae) : Colors.white,
        ),
      ));
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: indicators,
    );
  }
}
