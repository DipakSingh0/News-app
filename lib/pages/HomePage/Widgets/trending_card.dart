import 'package:flutter/material.dart';

class TrendingCard extends StatelessWidget {

  final String imageUrl;
  final String tag;
  final String time;
  final String title;
  final String author;
  final VoidCallback ontap;

  const TrendingCard({super.key, required this.imageUrl, required this.tag, required this.time, required this.title, required this.author, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(right:10),
          padding: EdgeInsets.all(5),
          // height: 300,
          width: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            //  color: Theme.of(context.colorScheme).primaryContainer,
            color: Colors.grey[850],
          ),
          child: Column(
            children: [
              Container(
                height: 200,
                // width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //  color: Theme.of(context.colorScheme).primaryContainer,
                  color: Colors.black,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      // "https://imgs.search.brave.com/DWqe64_yDb9cUHdtO5czpXi5SrBes-FSVlLdBNsPveM/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9oaXBz/LmhlYXJzdGFwcHMu/Y29tL2htZy1wcm9k/L2ltYWdlcy90YXls/b3Itc3dpZnQtcGVy/Zm9ybXMtb25zdGFn/ZS1kdXJpbmctdGF5/bG9yLXN3aWZ0LXRo/ZS1uZXdzLXBob3Rv/LTE2ODczNjk0MjQu/anBnP3Jlc2l6ZT05/ODA6Kg",
                      imageUrl,
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                     tag,             //Tag
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  Text(
                      time,            //Date
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Flexible(
                  child: Text(
                   title,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ]),
              SizedBox(
                width: 5,
              ),
              Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(author),         //.....writer / author
                  ]),
              SizedBox(
                width: 10,
              ),
            ],
          )),
    );
  }
}
