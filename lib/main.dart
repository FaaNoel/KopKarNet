import 'package:flutter/material.dart';
import 'package:kopkarnet/layout/login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:kopkarnet/layout/Main/MenuDrawer.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'KopKarNet',
      theme: ThemeData(
        textTheme: GoogleFonts.oswaldTextTheme(textTheme).copyWith(
          body1: GoogleFonts.lato(),
        ),
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}