import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class Aboutus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'TaCZclub PVT. LTD. ',
                      style: GoogleFonts.roboto(
                        fontSize: 35,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text:
                          'is a best IT company in bandikui who providing best web design and software development. ',
                      style:
                          GoogleFonts.roboto(fontSize: 20, color: Colors.black),
                    ),
                    TextSpan(
                      text:
                          'Also web are professional in our field and we give service for value of money. We works on following platforms =>',
                      style:
                          GoogleFonts.roboto(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: LinearPercentIndicator(
                leading: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      'Flutter',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                lineHeight: 14.0,
                percent: 1,
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
                center: Text(
                  '100%',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: LinearPercentIndicator(
                leading: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      'Node JS',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                lineHeight: 14.0,
                percent: 1,
                backgroundColor: Colors.grey,
                progressColor: Colors.green,
                center: Text(
                  '100%',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: LinearPercentIndicator(
                leading: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      'Django',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                lineHeight: 14.0,
                percent: .95,
                backgroundColor: Colors.grey,
                progressColor: Colors.amberAccent,
                center: Text(
                  '95%',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: LinearPercentIndicator(
                leading: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      'Python',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                lineHeight: 14.0,
                percent: .9,
                backgroundColor: Colors.grey,
                progressColor: Colors.deepOrange,
                center: Text(
                  '90%',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: LinearPercentIndicator(
                leading: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      'PHP',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                lineHeight: 14.0,
                percent: .85,
                backgroundColor: Colors.grey,
                progressColor: Colors.deepPurple,
                center: Text(
                  '85%',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: LinearPercentIndicator(
                leading: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      'JAVA',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                lineHeight: 14.0,
                percent: .8,
                backgroundColor: Colors.grey,
                progressColor: Colors.lightGreen,
                center: Text(
                  '80%',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: LinearPercentIndicator(
                leading: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      'Kotlin',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                lineHeight: 14.0,
                percent: .75,
                backgroundColor: Colors.grey,
                progressColor: Colors.brown,
                center: Text(
                  '75%',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: LinearPercentIndicator(
                leading: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      'Laravel',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                lineHeight: 14.0,
                percent: .8,
                backgroundColor: Colors.grey,
                progressColor: Colors.teal,
                center: Text(
                  '80%',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: LinearPercentIndicator(
                leading: Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      'Electron JS',
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                lineHeight: 14.0,
                percent: .65,
                backgroundColor: Colors.grey,
                progressColor: Colors.redAccent,
                center: Text(
                  '65%',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
