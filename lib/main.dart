import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:omeeoweb/firebase_options.dart';
import 'package:omeeoweb/pages/landing_page_fith_level.dart';
import 'package:omeeoweb/pages/landing_page_fourth_level.dart';
import 'package:omeeoweb/pages/landing_page_second_level.dart';
import 'package:omeeoweb/pages/landing_page_first_level.dart';
import 'package:omeeoweb/pages/landing_page_third_level.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(OmeeoWashApp());
}

class OmeeoWashApp extends StatelessWidget {
  const OmeeoWashApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OMEEO CAR WASH',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins', // 👈 Set default font here
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16),
          bodyMedium: TextStyle(fontSize: 14),
          labelLarge: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LandingPageFirstLevel(),
              LandingPageSecondLevel(),
              LandingPageThirdLevel(),
              LandingPageFourthLevel(),
              LandingPageFithLevel(),
            ],
          ),
        ),
      ),
    );
  }
}









/* tel:0541542428 */