import 'package:flutter/material.dart';

import 'loading_container.dart';

class NewstileLoadingcontainer extends StatelessWidget {
  const NewstileLoadingcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 150,
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            LoadingContainer(
              width: 120,
              height: 120,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    LoadingContainer(
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    LoadingContainer(
                      width: MediaQuery.of(context).size.width / 2.2,
                      // width: MediaQuery.of(context).size.width / 2,
                      height: 20,
                    ),
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  LoadingContainer(
                      width: MediaQuery.of(context).size.width / 1.6,
                      height: 15),
                  SizedBox(
                    height: 10,
                  ),
                  LoadingContainer(
                      width: MediaQuery.of(context).size.width / 1.8,
                      height: 15),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LoadingContainer(
                          width: MediaQuery.of(context).size.width / 5,
                          height: 15),
                      LoadingContainer(
                          width: MediaQuery.of(context).size.width / 5,
                          height: 15),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
