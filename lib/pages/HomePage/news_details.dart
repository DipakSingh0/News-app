import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:newsapp/Controller/news_controller.dart';
import 'package:newsapp/Model/news_model.dart';

class NewsDetailsPage extends StatelessWidget {
  final NewsModel news;

  const NewsDetailsPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
                child: Column(
              children: [
                Row(
                  children: [
                    //.......................back button...........................//
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back),
                            Text("Back"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Container(
                    height: 330,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              news.urlToImage ??
                                  "https://imgs.search.brave.com/DWqe64_yDb9cUHdtO5czpXi5SrBes-FSVlLdBNsPveM/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy90YXls/b3Itc3dpZnQtcGVy/Zm9ybXMtb25zdGFn/ZS1kdXJpbmctdGF5/bG9yLXN3aWZ0LXRo/ZS1uZXdzLXBob3Rv/LTE2ODczNjk0MjQu/anBnP3Jlc2l6ZT05/ODA6Kg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    )),
                SizedBox(height: 12),

                //.......................title  and description...........................//
                Text(
                  news.title!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 12),

                //.......................author and time...........................//
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${news.author} * ${news.publishedAt}",
                    style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Row(children: [
                  //.......................Circle avatar...........................//
                  CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.red,
                      child: Text(news.author![0],
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ))),
                  //.......................author...........................//
                  Text(
                    " ${news.author}",
                    style: TextStyle(
                      fontSize: 25,
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
                SizedBox(height: 12),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Obx(
                        () => newsController.isSpeaking.value
                            ? IconButton(
                                onPressed: () {
                                  newsController.stop;
                                },
                                icon: Icon(Icons.stop, 
                                  size: 50 , 
                                ),
                              )
                            : IconButton(
                                onPressed: () {
                                  newsController.speak(
                                      news.description ?? "No Description");
                                },
                                icon: Icon(
                                  Icons.play_arrow_rounded,
                                  size: 50,
                                ),
                              ),
                      ),
                      Expanded(
                          child: Lottie.asset(
                        'Assets/Animation/soundwave.json',
                        height: 70,
                        animate: newsController.isSpeaking.value,
                      ))
                    ],
                  ),
                ),

                SizedBox(height: 12),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //.......................description...........................//
                    Flexible(
                      child: Text(
                        news.description ?? "No description",
                        style: TextStyle(
                          fontSize: 15,
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ))),
      ),
    );
  }
}
