import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class Portfolio extends StatelessWidget {
  final List<Widget> pageChildren = [
    PortfolioCard(
      title: 'Justdial Scrapper',
      image: Image.asset(
        'projects/jd-scrapper.jpg',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      url: 'https://github.com/taczclub/justdial-scrapper',
    ),
    PortfolioCard(
      title: 'Vivek Ki Class App',
      image: Image.asset(
        'projects/vivek-ki-class.jpg',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      url: 'http://vivek.taczclub.com',
    ),
    PortfolioCard(
      title: 'Invoice Software',
      image: Image.asset(
        'projects/billing-software.jpg',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      url: 'http://billingsoftware.taczclub.com',
    ),
    PortfolioCard(
      title: 'Status Monkey',
      image: Image.asset(
        'projects/status-monkey.jpg',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    ),
    PortfolioCard(
      title: 'AstroHub V1',
      image: Image.asset(
        'projects/astrohub-v1.jpg',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    ),
    PortfolioCard(
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

class PortfolioCard extends StatefulWidget {
  final String title;
  final Image image;
  final String url;

  PortfolioCard({@required this.title, @required this.image, this.url});

  @override
  _PortfolioCardState createState() => _PortfolioCardState();
}

class _PortfolioCardState extends State<PortfolioCard> {
  bool expanded = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          expanded = true;
        });
      },
      onExit: (event) {
        setState(() {
          expanded = false;
        });
      },
      child: Card(
        elevation: 5,
        child: Stack(
          children: [
            Positioned.fill(
              child: Center(
                child: widget.image,
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 500),
              curve: Curves.bounceOut,
              // onEnd: () {
              //   setState(() {
              //     viewshow = true;
              //   });
              // },
              top: expanded ? 0 : 200,
              bottom: expanded ? 200 : 0,
              left: 0,
              right: 0,
              child: Container(
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
            expanded
                ? Positioned(
                    top: 200,
                    bottom: 0,
                    left: 0,
                    right: 0,
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
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
