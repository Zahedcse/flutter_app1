import 'package:flutter/material.dart';
import 'package:flutter_app1/utils/routes.dart';
import 'screens/homepage.dart';
import 'screens/login.dart';
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
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => Login(),
          MyRoutes.homeRoute: (context) => HomePage(),
          MyRoutes.loginRoute: (context) => Login(),
        });
  }
}
