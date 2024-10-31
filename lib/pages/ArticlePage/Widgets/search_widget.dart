import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search News ...",
                          fillColor:
                              Theme.of(context).colorScheme.primaryContainer,
                              border: InputBorder.none,
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(20),
                          //   borderSide: BorderSide.none,
                          // ),
                          // enabledBorder: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(20),
                          //   borderSide: BorderSide.none,
                          // )
                          ),
                    )),
                    Container(
                      width: 50,
                      height: 50,
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color:   Theme.of(context).colorScheme.primary,
                        ),
                        child: Icon(Icons.search),
                    )
                  ],
                ),
              );
  }
}