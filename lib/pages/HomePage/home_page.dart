import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/Controller/news_controller.dart';
import 'package:newsapp/pages/HomePage/Widgets/news_tiles.dart';
import 'package:newsapp/pages/HomePage/Widgets/trending_card.dart';
import 'package:newsapp/pages/HomePage/news_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Obx(
                    () => Row(
                      children: newsController.trandingNewsList
                          .map(
                            (e) => TrendingCard(
                              ontap: () {
                                Get.to(NewsDetailsPage());
                              },
                              imageUrl: e.urlToImage ??
                                  "", // Use a placeholder if image is null
                              tag: 'Top trendings..',
                              time: e.publishedAt.toString(),
                              title: e.title ?? "No title",
                              author: e.author ?? "Unknown Author",
                            ),
                          )
                          .toList(),
                    ),
                  )),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       TrendingCard(
              //         ontap: () {
              //           Get.to(NewsDetailsPage());
              //         },
              //         imageUrl:
              //             "https://imgs.search.brave.com/DWqe64_yDb9cUHdtO5czpXi5SrBes-FSVlLdBNsPveM/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy90YXls/b3Itc3dpZnQtcGVy/Zm9ybXMtb25zdGFn/ZS1kdXJpbmctdGF5/bG9yLXN3aWZ0LXRo/ZS1uZXdzLXBob3Rv/LTE2ODczNjk0MjQu/anBnP3Jlc2l6ZT05/ODA6Kg",
              //         tag: 'Top trendings..',
              //         time: '2 days ago',
              //         title:
              //             'Taylor Swifts world tour is trending on Social Media',
              //         author: 'FanPage Worldwide',
              //       ),
              //       TrendingCard(
              //         ontap: () {
              //           Get.to(NewsDetailsPage());
              //         },
              //         imageUrl:
              //             "https://imgs.search.brave.com/6nGouOKX79miMm0PXEhIgmz8GlB23SE4YLUlsVF49Lw/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/bWFydmVsLmNvbS9j/b250ZW50LzF4L2Rl/YWRwb29sLWFuZC13/b2x2ZXJpbmUtaG9t/ZS1lbnQtYXJ0aWNs/ZS1jYXJkLmpwZw",
              //         tag: 'Top trendings..',
              //         time: '3 days ago',
              //         title:
              //             'DeadPool and Wolverine Grosses 1 Billion WorldWide',
              //         author: 'Marvels',
              //       ),
              //     ],
              //   ),
              // ),

              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
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
              ),
              SizedBox(
                height: 20,
              ),

              Obx(() => Column(
                children: newsController.trandingNewsList
                    .map(
                      (e) => NewsTiles(
                        imageUrl: e.urlToImage ?? "https://ichef.bbci.co.uk/news/1024/cpsprodpb/6281/live/4488bc30-9759-11ef-8538-e1655f5a8342.jpg.webp", 
                        time: e.publishedAt.toString(),
                        title: e.title ?? "No title",
                        author: e.author ?? "Unknown Author",
                      ),
                    )
                    .toList(),
              ),),

              // Column(
              //   children: [
              //     NewsTiles(
              //       imageUrl:
              //           'https://ichef.bbci.co.uk/news/1024/cpsprodpb/6281/live/4488bc30-9759-11ef-8538-e1655f5a8342.jpg.webp',
              //       author: 'India Times',
              //       title: "India celebrates Diwali, the festival of lights",
              //       time: 'Today',
              //     ),
                  // NewsTiles(
                  //   imageUrl:
                  //       'https://english.khabarhub.com/wp-content/uploads/2024/10/Cricket_October-2024-e1729481943322.jpg',
                  //   author: 'KATHMANDU POST',
                  //   title:
                  //       "Nepal triumphed over Scotland by five wickets in the One Day International match of the ICC Men’s Cricket World Cup League-2 Series.",
                  //   time: ' 2 days ago',
                  // ),
              //   ],
              // )
            ],
          ),
        ),
      )),
    );
  }
}
