import 'package:flutter/material.dart';

import 'screens/introduce_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        drawerTheme:
            const DrawerThemeData(scrimColor: Colors.transparent, elevation: 0),
      ),
      home: const IntroduceScreen(),
    );
  }
}
