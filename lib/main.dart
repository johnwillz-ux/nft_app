import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nft_app/pages/homepage.dart';
import 'package:nft_app/pages/onboard.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: const Color(0xff051821), // Color for Android
      statusBarBrightness: Brightness.dark // Dark status bar -- for IOS.
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      // home: const Onboard(),
      home: const HomePage(),
    );
  }
}


