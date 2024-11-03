import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/Components/newstile_loadingcontainer.dart';
import 'package:newsapp/Components/trending_loading_card.dart';
import 'package:newsapp/Controller/news_controller.dart';
import 'package:newsapp/pages/HomePage/Widgets/news_tiles.dart';
import 'package:newsapp/pages/HomePage/Widgets/trending_card.dart';
import 'package:newsapp/pages/HomePage/news_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // controller defined
    NewsController newsController = Get.put(NewsController());

    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),

              // .............................AppBar Row...............................//
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(100)),
                    child: Icon(Icons.dashboard),
                  ),
                  Text("NEWS APP",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        fontFamily: "poppins",
                        letterSpacing: 1.5,
                      )),
                  InkWell(
                    onTap: () {
                      newsController.getTrendingNews();
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(Icons.person),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),

              // .............................hottest news row...............................//
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hottest News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              // .............................trending news...............................//
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Obx(
                    () => newsController.isAppleLoading.value
                        ? const Row(
                            children: [
                              TrendingLoadingCard(),
                              TrendingLoadingCard(),
                            ],
                          )
                        : Row(
                            children: newsController.appleNews4
                                .map(
                                  (e) => TrendingCard(
                                    ontap: () {
                                      Get.to(NewsDetailsPage(
                                        news: e,
                                      ));
                                    },
                                    imageUrl: e.urlToImage ?? "",
                                    tag: 'Apple trendings..',
                                    time: e.publishedAt.toString(),
                                    title: e.title ?? "No title",
                                    author: e.author ?? "Unknown Author",
                                  ),
                                )
                                .toList(),
                          ),
                  )),

              SizedBox(
                height: 20,
              ),

              // .............................for you text row...............................//
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News for you",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              // .............................for you News row...............................//
              Obx(
                () => newsController.isNewsForYouLoading.value
                    ? const Column(
                        children: [
                          NewstileLoadingcontainer(),
                          NewstileLoadingcontainer(),
                          NewstileLoadingcontainer(),
                        ],
                      )
                    : Column(
                        children: newsController.newsForYou4
                            .map(
                              (e) => NewsTiles(
                                ontap: () {
                                  Get.to(NewsDetailsPage(news: e));
                                },
                                imageUrl: e.urlToImage ??
                                    "https://ichef.bbci.co.uk/news/1024/cpsprodpb/6281/live/4488bc30-9759-11ef-8538-e1655f5a8342.jpg.webp",
                                time: e.publishedAt.toString(),
                                title: e.title ?? "No title",
                                author: e.author ?? "Unknown Author",
                              ),
                            )
                            .toList(),
                      ),
              ),

              // .............................Elon News row...............................//
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tesla News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              // .............................Elon News row...............................//
              Obx(
                () => newsController.isElonLoading.value
                    ? const Column(
                        children: [
                          NewstileLoadingcontainer(),
                          NewstileLoadingcontainer(),
                          NewstileLoadingcontainer(),
                        ],
                      )
                    : Column(
                        children: newsController.elonNews4
                            .map(
                              (e) => NewsTiles(
                                ontap: () {
                                  Get.to(NewsDetailsPage(news: e));
                                },
                                imageUrl: e.urlToImage ??
                                    "https://ichef.bbci.co.uk/news/1024/cpsprodpb/6281/live/4488bc30-9759-11ef-8538-e1655f5a8342.jpg.webp",
                                time: e.publishedAt.toString(),
                                title: e.title ?? "No title",
                                author: e.author ?? "Unknown Author",
                              ),
                            )
                            .toList(),
                      ),
              ),

              // .............................Apple news row...............................//
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Apple News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),

              SizedBox(
                height: 20,
              ),

              // .............................Apple news Row...............................//
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Obx(
                    () => newsController.isBusinesLoading.value
                        ?  const Row(
                            children: [
                              TrendingLoadingCard(),
                              TrendingLoadingCard(),
                            ],
                          )
                        : Row(
                            children: newsController.businesNews4
                                .map(
                                  (e) => TrendingCard(
                                    ontap: () {
                                      Get.to(NewsDetailsPage(
                                        news: e,
                                      ));
                                    },
                                    imageUrl: e.urlToImage ?? "",
                                    tag: 'Apple trendings..',
                                    time: e.publishedAt.toString(),
                                    title: e.title ?? "No title",
                                    author: e.author ?? "Unknown Author",
                                  ),
                                )
                                .toList(),
                          ),
                  )),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Business News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              // .............................BusinessNews Column...............................//
              Obx(
                () => newsController.isBusinesLoading.value
                    ? const Column(
                        children: [
                          NewstileLoadingcontainer(),
                          NewstileLoadingcontainer(),
                          NewstileLoadingcontainer(),
                        ],
                      )
                    : Column(
                        children: newsController.businesNews4
                            .map(
                              (e) => NewsTiles(
                                ontap: () {
                                  Get.to(NewsDetailsPage(news: e));
                                },
                                imageUrl: e.urlToImage ??
                                    "https://ichef.bbci.co.uk/news/1024/cpsprodpb/6281/live/4488bc30-9759-11ef-8538-e1655f5a8342.jpg.webp",
                                time: e.publishedAt.toString(),
                                title: e.title ?? "No title",
                                author: e.author ?? "Unknown Author",
                              ),
                            )
                            .toList(),
                      ),
              ),

              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
