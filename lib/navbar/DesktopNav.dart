import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../views/HomeView.dart';
import '../views/Pricing.dart';
import '../views/Portfolio.dart';
import '../views/Aboutus.dart';

class DesktopNav extends StatefulWidget {
  @override
  _DesktopNavState createState() => _DesktopNavState();
}

class _DesktopNavState extends State<DesktopNav> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              const Color(0xffee0000),
              const Color(0xffeeee00)
            ], // red to yellow
            tileMode: TileMode.repeated,
          ),
        ),
        child: DefaultTabController(
          length: 4,
          initialIndex: 0,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RaisedButton(
                      onPressed: () {},
                      color: Colors.black,
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'TaCZclub',
                          style: GoogleFonts.audiowide(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 250),
                    Expanded(
                      child: TabBar(
                        indicatorColor: Colors.black,
                        labelStyle: GoogleFonts.robotoSlab(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                        labelColor: Colors.black,
                        tabs: [
                          Tab(text: 'Home'),
                          Tab(text: 'Pricing'),
                          Tab(text: 'Portfolio'),
                          Tab(text: 'About Us'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 10,
                        ),
                        child: HomeView(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 10,
                      ),
                      child: Pricing(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 10,
                      ),
                      child: Portfolio(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 10,
                      ),
                      child: Aboutus(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
