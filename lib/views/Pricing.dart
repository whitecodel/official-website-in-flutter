import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pricing extends StatelessWidget {
  final List<Widget> pageChildren = [
    PriceCard(
      title: 'Static Website',
      pricetiles: [
        PriceTile(
          leftText: '3 Pages',
          rightText: '6,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: '5 Pages',
          rightText: '8,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: '8 Pages',
          rightText: '10,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: '15 Pages',
          rightText: '15,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: '25 Pages',
          rightText: '20,000 Rs. Only-\\',
        ),
      ],
    ),
    PriceCard(
      title: 'Dynamic Website',
      pricetiles: [
        PriceTile(
          leftText: '3 Pages',
          rightText: '10,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: '5 Pages',
          rightText: '15,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: '8 Pages',
          rightText: '20,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: '15 Pages',
          rightText: '25,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: '25 Pages',
          rightText: '30,000 Rs. Only-\\',
        ),
      ],
    ),
    PriceCard(
      title: 'Ecommerce Website',
      pricetiles: [
        PriceTile(
          leftText: 'On Wordpress',
          rightText: '10,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: 'On Django',
          rightText: '20,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: 'On Laravel',
          rightText: '20,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: 'Per Payment \nIntegration',
          rightText: '2,000 Rs. Only-\\',
        ),
      ],
    ),
    PriceCard(
      title: 'Ecommerce App',
      pricetiles: [
        PriceTile(
          leftText: 'On Flutter',
          rightText: '50,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: 'On Java',
          rightText: '50,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: 'On Kotlin',
          rightText: '50,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: 'On React \nNative',
          rightText: '50,000 Rs. Only-\\',
        ),
      ],
    ),
    PriceCard(
      title: 'Bulk SMS',
      pricetiles: [
        PriceTile(
          leftText: '5,000 SMS',
          rightText: '1,200 Rs. Only-\\',
        ),
        PriceTile(
          leftText: '10,000 SMS',
          rightText: '2,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: '50,000 SMS',
          rightText: '5,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: '1,00,000 SMS',
          rightText: '9,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: '2,00,000 SMS',
          rightText: '15,000 Rs. Only-\\',
        ),
      ],
    ),
    PriceCard(
      title: 'Learn Programming',
      pricetiles: [
        PriceTile(
          leftText: 'C / C++',
          rightText: '2,000 Rs. / Months',
        ),
        PriceTile(
          leftText: 'Python',
          rightText: '2,000 Rs. / Months',
        ),
        PriceTile(
          leftText: 'PHP',
          rightText: '2,000 Rs. / Months',
        ),
        PriceTile(
          leftText: 'Java',
          rightText: '3,000 Rs. / Months',
        ),
        PriceTile(
          leftText: 'Kotlin',
          rightText: '2,000 Rs. / Months',
        ),
      ],
    ),
    PriceCard(
      title: 'CMS',
      pricetiles: [
        PriceTile(
          leftText: 'School \nManagement \nSystem',
          rightText: '20,000 Rs. / Year',
        ),
        PriceTile(
          leftText: 'App For \nVideos Or \nNotes Selling',
          rightText: '20,000 Rs. Only-\\',
        ),
      ],
    ),
    PriceCard(
      title: 'Techinal Support',
      pricetiles: [
        PriceTile(
          leftText: 'Per Hour',
          rightText: '500 Rs. Only-\\',
        ),
        PriceTile(
          leftText: '6 Hours \nPer Day',
          rightText: '2,500 Rs. Only-\\',
        ),
        PriceTile(
          leftText: '180 Hours \nPer Month',
          rightText: '60,000 Rs. Only-\\',
        ),
        PriceTile(
          leftText: '2160 Hours \nPer Year',
          rightText: '6,00,000 Rs. Only-\\',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return GridView.builder(
            itemCount: 8,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: .9,
            ),
            itemBuilder: (context, index) {
              return pageChildren[index];
            },
          );
        } else {
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              childAspectRatio: 1,
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

class PriceCard extends StatelessWidget {
  final String title;
  final List<PriceTile> pricetiles;
  PriceCard({@required this.title, @required this.pricetiles});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              title,
              style: GoogleFonts.staatliches(fontSize: 40),
            ),
          ),
          Container(color: Colors.grey[400], height: 1),
          for (var pricetile in pricetiles) pricetile
        ],
      ),
    );
  }
}

class PriceTile extends StatelessWidget {
  final String leftText;
  final String rightText;
  PriceTile({this.leftText, this.rightText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                leftText,
                style: GoogleFonts.josefinSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '=',
                style: GoogleFonts.josefinSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                rightText,
                style: GoogleFonts.josefinSans(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Container(color: Colors.grey[400], height: 1),
      ],
    );
  }
}
