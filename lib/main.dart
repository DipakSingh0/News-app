import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Config/theme.dart';
import 'pages/home_page_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    
 
    return GetMaterialApp(
      title: 'NEWS APP',
      debugShowCheckedModeBanner: false,
      theme: darkTheme , 
      themeMode: ThemeMode.system , 
      darkTheme: darkTheme,
      home: HomePageController(),
      // home:DemoPage(),
    );
  }
}
