import 'package:flutter/material.dart';

class TrendingCard extends StatelessWidget {
  final String imageUrl;
  final String tag;
  final String time;
  final String title;
  final String author;
  final VoidCallback ontap;

  const TrendingCard(
      {super.key,
      required this.imageUrl,
      required this.tag,
      required this.time,
      required this.title,
      required this.author,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.all(5),
          width: 280,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[850],
          ),
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(imageUrl, fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //...................................Tag ..................................//
                  Text(
                    tag,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),

                  //...................................Time ..................................//
                  Text(
                    time,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, 
               //...................................Title ..................................//
              children: [
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

              Row(children: [
                SizedBox(
                  width: 10,
                ),

                //...................................Circle avatar ..................................//
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                ),
                SizedBox(
                  width: 5,
                ),

                //...................................author..................................//
                Text(author),
              ]),
              SizedBox(
                width: 10,
              ),
            ],
          )),
    );
  }
}
