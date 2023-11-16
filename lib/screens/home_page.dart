
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = "HomePage";

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart,color: Colors.black,),),
        ],
        backgroundColor:Theme.of(context).canvasColor,
        elevation: 0,
        centerTitle: true,
        title: Text("New Trend",style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
