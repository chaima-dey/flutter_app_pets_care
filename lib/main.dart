import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutterapppetscare/pages/splash_page.dart';
import 'package:flutterapppetscare/rootPage.dart';
import 'package:flutterapppetscare/theme/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet App UI',
      theme: ThemeData(

          // brightness: Brightness.dark,
          inputDecorationTheme: const InputDecorationTheme(
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: colortheme)
            ),
            // labelStyle: TextStyle(color: Colors.purple),
            border: OutlineInputBorder(gapPadding: 10),

          ),
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme

          ),

          scaffoldBackgroundColor: appBackground),
      home: SplashScreen(),
    );
  }
}



