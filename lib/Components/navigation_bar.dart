import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/Controller/bottom_nav_bar_controller.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    //controller
    BottomNavBarController controller = Get.put(BottomNavBarController());

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          height: 60,
          width: 200,
          decoration: BoxDecoration(
            color: controller.index.value == 0
                ? Theme.of(context).colorScheme.primaryContainer
                : null,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () {
                    controller.index.value = 0;
                  },
                  child: Obx(
                    () => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceInOut,
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: controller.index.value == 0
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.home,
                        size: 30,
                        color: controller.index.value == 0
                            ? Theme.of(context).colorScheme.onBackground
                            : Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                  )),
              InkWell(
                  onTap: () {
                    controller.index.value = 1;
                  },
                  child: Obx(
                    () => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceInOut,
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        // color: Theme.of(context).colorScheme.primary,
                        color: controller.index.value == 1
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.book,
                        size: 30,
                        color: controller.index.value == 1
                            ? Theme.of(context).colorScheme.onBackground
                            : Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                  )),
              InkWell(
                  onTap: () {
                    controller.index.value = 2;
                  },
                  child: Obx(
                    () => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceInOut,
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        // color: Theme.of(context).colorScheme.primary,
                        color: controller.index.value == 2
                            ? Theme.of(context).colorScheme.primary
                            : null,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        Icons.settings,
                        size: 30,
                        color: controller.index.value == 2
                            ? Theme.of(context).colorScheme.onBackground
                            : Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
