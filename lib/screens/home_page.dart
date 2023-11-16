import 'package:flutter/material.dart';

import '../widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String id = "HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "New Trend",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 16.0,left: 16,top: 65),
        child: GridView.builder(
          clipBehavior: Clip.none,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.8,
            crossAxisSpacing: 5,
            mainAxisSpacing: 70
          ),
          itemBuilder: (context,index){
            return const CardItem();
          },
        ),
      ),
    );
  }
}


