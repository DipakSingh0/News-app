import 'package:flutter/material.dart';

import 'loading_container.dart';

class TrendingLoadingCard extends StatelessWidget {
  const TrendingLoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.all(5),
        width: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[850],
        ),
        child: Column(
          children: [
            LoadingContainer(
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                LoadingContainer(
                  width: MediaQuery.of(context).size.width / 4.5,
                  // width: MediaQuery.of(context).size.width / 4,
                  height: 10,
                ),
                LoadingContainer(
                  width: MediaQuery.of(context).size.width / 5.5,
                  // width: MediaQuery.of(context).size.width / 5,
                  height: 10,
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              LoadingContainer(
                // width: MediaQuery.of(context).size.width / 1.9,
                width: MediaQuery.of(context).size.width / 2.4,
                height: 20,
              ),
            ]),
            SizedBox(
              width: 5,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              LoadingContainer(
                width: MediaQuery.of(context).size.width / 2.5 - 2,
                // width: MediaQuery.of(context).size.width / 2.2 - 0.2,
                
                height: 20,
              ),
            ]),
            SizedBox(
              width: 5,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              LoadingContainer(
                width: 30,
                height: 30,
              ),
              SizedBox(
                width: 5,
              ),
              LoadingContainer(
                // width: MediaQuery.of(context).size.width / 2.2,
                width: MediaQuery.of(context).size.width / 3.2,
                height: 20,
              ),
            ]),
          ],
        ));
  }
}
