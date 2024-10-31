import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsDetailsPage extends StatelessWidget {
  const NewsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
                child: Column(
              children: [
                Row(
                  children: [
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
                    )
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
                              "https://imgs.search.brave.com/6nGouOKX79miMm0PXEhIgmz8GlB23SE4YLUlsVF49Lw/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/bWFydmVsLmNvbS9j/b250ZW50LzF4L2Rl/YWRwb29sLWFuZC13/b2x2ZXJpbmUtaG9t/ZS1lbnQtYXJ0aWNs/ZS1jYXJkLmpwZw",
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    )),
                SizedBox(height: 12),
                Text(
                  "DeadPool and Wolverine Grosses 1 Billion WorldWide",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 12),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Yesterday",
                    style: TextStyle(
                      fontSize: 15,
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 12),
                Row(children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                  ),
                  Text(
                    " Marvels",
                    style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ]),
                SizedBox(height: 12),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Text(
                        " Released in 2024, 'Deadpool & Wolverine' shattered box office records, grossing over 1.3 billion worldwide.\n This superhero film, directed by Shawn Levy, brought together two iconic characters, Deadpool and Wolverine, played by Ryan Reynolds and Hugh Jackman, respectively.\n Deadpool & Wolverine quickly became one of the highest-grossing R-rated films of all time.  ",
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
