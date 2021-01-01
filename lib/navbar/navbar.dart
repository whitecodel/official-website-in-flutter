import 'package:flutter/material.dart';
import './DesktopNav.dart';
import './MobileNav.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return DesktopNav();
        } else {
          return MobileNav();
        }
      },
    );
  }
}
