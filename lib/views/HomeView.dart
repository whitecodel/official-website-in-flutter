import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  List<Widget> pageChildren(width) {
    return <Widget>[
      SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'We Are Providing Best \nWebiste and App Development',
              style: GoogleFonts.mukta(
                fontSize: 50,
                color: Colors.white,
                height: 1,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'We have taken each and every project handed over to us a challenge, which has helped us achive a high project success rate',
              style: GoogleFonts.mukta(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 150,
              height: 37,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.deepPurple[800],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Get Started',
                      style: GoogleFonts.robotoCondensed(
                        fontSize: 21,
                        color: Colors.white,
                        // fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                    ),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
      Image.asset(
        'images/development.png',
        width: width,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return Row(
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
    ;
  }
}
