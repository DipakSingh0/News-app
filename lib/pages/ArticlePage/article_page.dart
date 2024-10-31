import 'package:flutter/material.dart';
import 'package:newsapp/pages/ArticlePage/Widgets/search_widget.dart';
import 'package:newsapp/pages/HomePage/Widgets/news_tiles.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Article Page"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
             SearchWidget(),
             SizedBox(height: 10),
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
                title: "India celebrates Diwali, the festival of lights",
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
                title: "India celebrates Diwali, the festival of lights",
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
             SizedBox(height: 10),

            ],
          ),
        ),
      ),
    );
  }
}
