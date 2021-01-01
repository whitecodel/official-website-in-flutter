import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import '../views/HomeView.dart';
import '../views/Pricing.dart';
import '../views/Aboutus.dart';
import '../views/MobilePortfolio.dart';
import '../views/MobilePricing.dart';

class MobileNav extends StatefulWidget {
  @override
  _MobileNavState createState() => _MobileNavState();
}

class _MobileNavState extends State<MobileNav>
    with SingleTickerProviderStateMixin {
  bool isOpened = false;
  AnimationController _animationController;
  Animation<Color> _animateColor;
  Animation<double> _animateIcon;
  Curve _curve = Curves.easeOut;
  int _selected = 0;
  Animation<double> _opacity;

  @override
  initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200))
          ..addListener(() {
            setState(() {});
          });
    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _animateColor = ColorTween(
      begin: Colors.teal,
      end: Colors.black,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Interval(
        0.00,
        1.00,
        curve: _curve,
      ),
    ));
    _opacity =
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn);

    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  animate() {
    if (!isOpened) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    isOpened = !isOpened;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
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
      child: Column(
        children: [
          Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.black,
                      elevation: 30,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'TaCZclub',
                          style: GoogleFonts.audiowide(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: animate,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      margin: EdgeInsets.all(15),
                      color: _animateColor.value,
                      child: AnimatedIcon(
                        icon: AnimatedIcons.menu_close,
                        color: Colors.white,
                        progress: _animateIcon,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: IndexedStack(
                    sizing: StackFit.expand,
                    index: _selected,
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
                        child: MobilePricing(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 10,
                        ),
                        child: MobilePortfolio(),
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
              ),
              Positioned(
                top: 60,
                right: 20,
                child: FadeTransition(
                  opacity: _opacity,
                  child: Container(
                    color: Colors.white,
                    width: 200,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Home',
                            style: GoogleFonts.roboto(),
                          ),
                          onTap: () => setState(() {
                            _selected = 0;
                            animate();
                          }),
                          tileColor: _selected == 0 ? Colors.blue : null,
                        ),
                        ListTile(
                          title: Text(
                            'Pricing',
                            style: GoogleFonts.roboto(),
                          ),
                          onTap: () => setState(() {
                            _selected = 1;
                            animate();
                          }),
                          tileColor: _selected == 1 ? Colors.blue : null,
                        ),
                        ListTile(
                          title: Text(
                            'Portfolio',
                            style: GoogleFonts.roboto(),
                          ),
                          onTap: () => setState(() {
                            _selected = 2;
                            animate();
                          }),
                          tileColor: _selected == 2 ? Colors.blue : null,
                        ),
                        ListTile(
                          title: Text(
                            'About Us',
                            style: GoogleFonts.roboto(),
                          ),
                          onTap: () => setState(() {
                            _selected = 3;
                            animate();
                          }),
                          tileColor: _selected == 3 ? Colors.blue : null,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
