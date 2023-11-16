import 'package:flutter/material.dart';
import 'package:store_app/screens/home_page.dart';


void main() {
  runApp(const StoreApp());
}


class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
      routes: {
        HomePage.id: (context) => const HomePage(),
      },
      initialRoute: HomePage.id,
    );
  }
}


