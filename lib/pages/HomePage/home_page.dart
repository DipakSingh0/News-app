import 'package:flutter/material.dart';
import 'package:newsapp/Components/navigation_bar.dart';
import 'package:newsapp/pages/HomePage/Widgets/news_tiles.dart';
import 'package:newsapp/pages/HomePage/Widgets/trending_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      child: Scaffold(
          appBar: AppBar(
              title: Text(
            "NEWS APP",
            style: Theme.of(context).textTheme.headlineLarge,
          )),
          floatingActionButton: MyBottomNav(),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hottest News",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        "See All",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TrendingCard(
                          imageUrl:
                              "https://imgs.search.brave.com/DWqe64_yDb9cUHdtO5czpXi5SrBes-FSVlLdBNsPveM/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy90YXls/b3Itc3dpZnQtcGVy/Zm9ybXMtb25zdGFn/ZS1kdXJpbmctdGF5/bG9yLXN3aWZ0LXRo/ZS1uZXdzLXBob3Rv/LTE2ODczNjk0MjQu/anBnP3Jlc2l6ZT05/ODA6Kg",
                          tag: 'Top trendings..',
                          time: '2 days ago',
                          title:
                              'Taylor Swifts world tour is trending on Social Media',
                          author: 'FanPage Worldwide',
                        ),
                        TrendingCard(
                          imageUrl:
                              "https://imgs.search.brave.com/6nGouOKX79miMm0PXEhIgmz8GlB23SE4YLUlsVF49Lw/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/bWFydmVsLmNvbS9j/b250ZW50LzF4L2Rl/YWRwb29sLWFuZC13/b2x2ZXJpbmUtaG9t/ZS1lbnQtYXJ0aWNs/ZS1jYXJkLmpwZw",
                          tag: 'Top trendings..',
                          time: '3 days ago',
                          title:
                              'DeadPool and Wolverine Grosses 1 Billion WorldWide',
                          author: 'Marvels',
                        ),
                        TrendingCard(
                          imageUrl:
                              "https://imgs.search.brave.com/RlLy_K1l_3sniS2vcDjuM7deQgllDRvmnPU5zaP6Sgc/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMxLmNicmltYWdl/cy5jb20vd29yZHBy/ZXNzL3dwLWNvbnRl/bnQvdXBsb2Fkcy8y/MDI0LzEwL3Zlbm9t/LXRha2VzLW9uLXRo/ZS1mb3JtLW9mLWEt/aG9yc2UtaW4tdmVu/b20tdGhlLWxhc3Qt/ZGFuY2UuanBn",
                          tag: 'Top trendings..',
                          time: '1 days ago',
                          title:
                              'Venom The last dance is released Worldwide Today',
                          author: 'Marvels',
                        ),
                        TrendingCard(
                          imageUrl: "",
                          tag: 'Top trendings..',
                          time: '1 days ago',
                          title: '-',
                          author: '',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "News for you",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Text(
                        "See All",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      NewsTiles(
                        imageUrl:
                            'https://imgs.search.brave.com/ku95iS6KM0wdm-xK0s7vhGFViL4rKKbQM6KSbULxAuc/rs:fit:200:200:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMud2lraWEubm9j/b29raWUubmV0L2Vw/aWNyYXBiYXR0bGVz/b2ZoaXN0b3J5L2lt/YWdlcy84Lzg2L0Rv/bmFsZF9UcnVtcF92/c19LYW1hbGFfSGFy/cmlzLl9FcGljX1Jh/cF9CYXR0bGVzX29m/X0hpc3RvcnktMi9y/ZXZpc2lvbi9sYXRl/c3Q_Y2I9MjAyNDEw/MjYxODUwMjc',
                        author: 'BBC',
                        title:
                            "Donald Trump vs Kamala Harris Epic Rap Battles of History Wiki",
                        time: '2 days ago',
                      ),
                      NewsTiles(
                        imageUrl:
                            'https://ichef.bbci.co.uk/news/1024/cpsprodpb/6281/live/4488bc30-9759-11ef-8538-e1655f5a8342.jpg.webp',
                        author: 'India Times',
                        title:
                            "India celebrates Diwali, the festival of lights",
                        time: 'Today',
                      ),
                      NewsTiles(
                        imageUrl:
                            'https://english.khabarhub.com/wp-content/uploads/2024/10/Cricket_October-2024-e1729481943322.jpg',
                        author: 'KATHMANDU POST',
                        title:
                            "Nepal triumphed over Scotland by five wickets in the One Day International match of the ICC Men’s Cricket World Cup League-2 Series.",
                        time: ' 2 days ago',
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
