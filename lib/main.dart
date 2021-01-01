import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './navbar/navbar.dart';
import 'dart:html' as html;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TaCZclub - A NEW IMAGE OF TECHNOLOGY',
      theme: ThemeData(
        primaryColor: Colors.grey[600],
      ),
      home: Scaffold(
        body: Navbar(),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(50),
          child: FloatingActionButton(
            hoverColor: Colors.green,
            hoverElevation: 50,
            heroTag: HeroFlightDirection.push,
            onPressed: () => html.window.open('tel: 8387952628', '_self'),
            backgroundColor: Colors.blue,
            child: Icon(Icons.call),
          ),
        ),
      ),
    );
  }
}
