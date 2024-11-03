import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/Controller/news_controller.dart';
import 'package:newsapp/pages/ArticlePage/Widgets/search_widget.dart';
import 'package:newsapp/pages/HomePage/Widgets/news_tiles.dart';
import 'package:newsapp/pages/HomePage/news_details.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    NewsController newsController = Get.put(NewsController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Article Page"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              //.......................search bar widget...........................//
              SearchWidget(),
              SizedBox(height: 10),

              //.......................newstiles...........................//
              Obx (() => 
                 Column(
                  children: newsController.newsForYouList
                      .map(
                        (e) => NewsTiles(
                          ontap: () {
                            Get.to(NewsDetailsPage(news: e));
                          },
                          imageUrl: e.urlToImage ?? "",
                          time: e.publishedAt.toString(),
                          title: e.title ?? "No title",
                          author: e.author ?? "Unknown Author",
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
