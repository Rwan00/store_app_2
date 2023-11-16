import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                blurRadius: 40,
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 0,
                offset: const Offset(10, 10)),
          ], borderRadius: BorderRadius.circular(10)),
          child: const Card(
            elevation: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "HandBag Lv",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        r"$225",
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 70,
            left: 105,
            child: Image.network(
              "https://www.pngall.com/wp-content/uploads/2/Bag-PNG-Picture.png",
              height: 100,
            ))
      ],
    );
  }
}