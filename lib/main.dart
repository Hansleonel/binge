import 'package:binge/screens/seen_content_screen.dart';
import 'package:flutter/material.dart';

import 'package:binge/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Binge App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome',
      routes: {
        'welcome': (BuildContext context) => WelcomeScreen(),
        'login': (BuildContext context) => LoginScreen(),
        'createAccount': (BuildContext context) => CreateAccountScreen(),
        'seenContent': (BuildContext context) => SeenContent()
      },
      theme: ThemeData(
          primaryColor: Colors.yellow[600],
          buttonColor: Colors.teal[300],
          accentColor: Colors.teal[300],
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.teal[300])),
    );
  }
}
