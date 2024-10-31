import 'package:flutter/material.dart';

import 'Config/Theme.dart';
import 'pages/HomePage/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NEWS APP',
      debugShowCheckedModeBanner: false,
      theme: darkTheme , 
      themeMode: ThemeMode.system , 
      darkTheme: darkTheme,
      home:  HomePage(),
    );
  }
}
