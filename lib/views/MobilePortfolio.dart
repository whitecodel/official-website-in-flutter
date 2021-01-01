import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class MobilePortfolio extends StatelessWidget {
  final List<Widget> pageChildren = [
    MobilePortfolioCard(
      title: 'Justdial Scrapper',
      image: Image.asset(
        'projects/jd-scrapper.jpg',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      url: 'https://github.com/taczclub/justdial-scrapper',
    ),
    MobilePortfolioCard(
      title: 'Vivek Ki Class App',
      image: Image.asset(
        'projects/vivek-ki-class.jpg',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      url: 'http://vivek.taczclub.com',
    ),
    MobilePortfolioCard(
      title: 'Invoice Software',
      image: Image.asset(
        'projects/billing-software.jpg',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      url: 'http://billingsoftware.taczclub.com',
    ),
    MobilePortfolioCard(
      title: 'Status Monkey',
      image: Image.asset(
        'projects/status-monkey.jpg',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    ),
    MobilePortfolioCard(
      title: 'AstroHub V1',
      image: Image.asset(
        'projects/astrohub-v1.jpg',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    ),
    MobilePortfolioCard(
      title: 'AstroHub V2',
      image: Image.asset(
        'projects/astrohub-v2.jpg',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return GridView.builder(
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1.3,
            ),
            itemBuilder: (context, index) {
              return pageChildren[index];
            },
          );
        } else {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
            ),
            itemBuilder: (context, index) {
              return pageChildren[index];
            },
          );
        }
      },
    );
  }
}

class MobilePortfolioCard extends StatefulWidget {
  final String title;
  final Image image;
  final String url;

  MobilePortfolioCard({@required this.title, @required this.image, this.url});

  @override
  _MobilePortfolioCardState createState() => _MobilePortfolioCardState();
}

class _MobilePortfolioCardState extends State<MobilePortfolioCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Stack(
        children: [
          Positioned.fill(
            child: Center(
              child: widget.image,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              color: Colors.black.withAlpha(200),
              child: Center(
                child: Text(
                  widget.title,
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  if (widget.url != null) {
                    html.window.open(
                      widget.url,
                      '_blank',
                    );
                  }
                },
                color: Colors.cyanAccent,
                focusElevation: 0,
                child: Center(
                  child: Text(
                    'VIEW DEMO',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
