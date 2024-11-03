import 'package:flutter/material.dart';

class NewsTiles extends StatelessWidget {
  final String imageUrl;
  final String author;
  final String title;
  final String time;
  final VoidCallback ontap;

  const NewsTiles(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.time,
      required this.author,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          // height: 150,
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      // "https://imgs.search.brave.com/DWqe64_yDb9cUHdtO5czpXi5SrBes-FSVlLdBNsPveM/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy90YXls/b3Itc3dpZnQtcGVy/Zm9ybXMtb25zdGFn/ZS1kdXJpbmctdGF5/bG9yLXN3aWZ0LXRo/ZS1uZXdzLXBob3Rv/LTE2ODczNjk0MjQu/anBnP3Jlc2l6ZT05/ODA6Kg",
                      imageUrl,
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [

                      //.......................CircleAvatar...........................//
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                      ),
                      
                      SizedBox(
                        width: 10,
                      ),

                      //.......................writer / author...........................//
                      Text("$author"),
                    ]),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),

                      //....................... title ...........................//
                      child: Text(
                        // "Donald Trump vs Kamala Harris Epic Rap Battles of History Wiki",
                        "$title",
                        maxLines: 2,
                      ),
                    ),

                    //....................... time ..........................//
                    Text(
                      "  $time",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
