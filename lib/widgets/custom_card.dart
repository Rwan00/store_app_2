import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';

class CardItem extends StatelessWidget {
   const CardItem({
    required this.product,
    super.key,
  });
final ProductModal product;
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
          child:  Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    product.title.substring(0,8),
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$ ${product.price.toString()} ",
                        style: const TextStyle(fontSize: 16),
                      ),
                      const Icon(
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
            bottom: 85,
            left: 90,
            child: Image.network(
              product.image,
              height: 85,
              width: 85,
            ),),
      ],
    );
  }
}