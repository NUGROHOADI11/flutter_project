import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class Hotel {
  final String imagePath;
  final String description;
  final String fee;

  Hotel(this.imagePath, this.description, this.fee);
}

class _HomeScreenState extends State<HomeScreen> {
  late double height, width;

  List<Hotel> hotels = [
    Hotel("images/hotel1.jpg", "Hotel Surya", "\$800"),
    Hotel("images/hotel2.jpg", "Hotel Ari", "\$100"),
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    // List<String> imagePaths = [
    //   "images/hotel1.jpg",
    //   "images/hotel2.jpg",
    // ];
    //
    // List<String> descriptions = [
    //   "Hotel Surya",
    //   "Hotel Ari",
    // ];
    //
    // List<String> fees = [
    //   "\$800",
    //   "\$100",
    // ];

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: height,
          width: width,
          color: const Color(0xff1f1d2b),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.035,
                ),
                SizedBox(
                  height: height * 0.09,
                  width: width * 0.88,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back,",
                            style: GoogleFonts.dmSans(
                              fontSize: width * 0.07,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Onky",
                            style: GoogleFonts.dmSans(
                              fontSize: width * 0.07,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: height * 0.03,
                        width: width * 0.06,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.transparent,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/bell-ring.png"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Container(
                  height: height * 0.06,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    color: const Color(0xff2e2d35),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: width * 0.08),
                      child: TextFormField(
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search hotel, apartment",
                          hintStyle: GoogleFonts.dmSans(
                            color: Colors.grey,
                            fontSize: width * 0.035,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                SizedBox(
                  width: width * 0.88,
                  height: height * 0.04,
                  child: Text(
                    "Category",
                    style: GoogleFonts.dmSans(
                      fontSize: width * 0.04,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.88,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: height * 0.055,
                          width: width * 0.27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.5),
                            color: const Color(0xffffb94f),
                          ),
                          child: Center(
                            child: Text(
                              "Hotel",
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
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: height * 0.055,
                          width: width * 0.27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.5),
                            color: const Color(0xff696969),
                          ),
                          child: Center(
                            child: Text(
                              "Flight",
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
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: height * 0.055,
                          width: width * 0.27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.5),
                            color: const Color(0xff696969),
                          ),
                          child: Center(
                            child: Text(
                              "Train",
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
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.035,
                ),
                SizedBox(
                  width: width * 0.88,
                  height: height * 0.04,
                  child: Text(
                    "Feature Hotel",
                    style: GoogleFonts.dmSans(
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.3,
                  width: width * 0.92,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 2, // Increase the itemCount to display 3 cards
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: width * 0.01,
                        ),
                        child: SizedBox(
                          width: 220,
                          child: Card(
                            color: Color(0xff262837),
                            elevation: 0.4,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(12),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        hotels[index].imagePath,
                                        width: double.maxFinite,
                                        fit: BoxFit.cover,
                                        height: 140,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              hotels[index].description,
                                              style: GoogleFonts.dmSans(
                                                fontSize: width * 0.045,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            Text(
                                              hotels[index].fee,
                                              style: GoogleFonts.dmSans(
                                                fontSize: width * 0.04,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.green,
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          height: height * 0.025,
                                          width: width * 0.05,
                                          decoration: const BoxDecoration(
                                            color: Colors.transparent,
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "images/bookmark.png"),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                SizedBox(
                  width: width * 0.88,
                  height: height * 0.03,
                  child: Text(
                    "Recommendation Hotel",
                    style: GoogleFonts.dmSans(
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.4,
                  width: width * 0.9,
                  child: ListView.builder(
                    // scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: hotels.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: width * 0.02,
                        ),
                        child: SizedBox(
                          width: width,
                          height: height * 0.15,
                          child: Card(
                            color: Color(0xff262837),
                            elevation: 0.4,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(12),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        hotels[index].imagePath,
                                        width: width * 0.25,
                                        height: double.maxFinite,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          hotels[index].description,
                                          style: GoogleFonts.dmSans(
                                            fontSize: width * 0.045,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          hotels[index].fee,
                                          style: GoogleFonts.dmSans(
                                            fontSize: width * 0.04,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.green,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      height: height * 0.025,
                                      width: width * 0.05,
                                      decoration: const BoxDecoration(
                                        color: Colors.transparent,
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image:
                                              AssetImage("images/bookmark.png"),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff262837),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          iconSize: 28,
          showSelectedLabels: false,
          selectedFontSize: 3,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_rounded), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.dashboard_rounded), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded), label: ''),
          ],
        ),
      ),
    );
  }
}
