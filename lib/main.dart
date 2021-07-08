import 'package:flutter/material.dart';
import 'screens/homepage.dart';
import 'screens/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
          primarySwatch: Colors.deepPurple,
        ),
        darkTheme: ThemeData(brightness: Brightness.light),
        // initialRoute: "/home",
        routes: {
          "/": (context) => LoginPage(),
          "/home": (context) => HomePage(),
        });
  }
}
