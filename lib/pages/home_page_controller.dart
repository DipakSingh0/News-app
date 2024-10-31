import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/Components/navigation_bar.dart';

import '../Controller/bottom_nav_bar_controller.dart';

class HomePageController extends StatelessWidget {
  const HomePageController({super.key});

  @override
  Widget build(BuildContext context) {
       BottomNavBarController controller = Get.put(BottomNavBarController());

    return Scaffold(
      floatingActionButton: MyBottomNav(),

      body: Obx(
        () => controller.pages[controller.index.value],
      )
    );
  }
}