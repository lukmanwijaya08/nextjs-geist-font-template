import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pos_maman/screens/splash_screen.dart';
import 'package:pos_maman/screens/login_screen.dart';
import 'package:pos_maman/screens/main_menu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(PosMamanApp());
}

class PosMamanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POS Maman',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'GoogleFonts.roboto',
            ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        MainMenu.routeName: (context) => MainMenu(),
      },
    );
  }
}
