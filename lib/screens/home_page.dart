import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_products_service.dart';

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
          padding: const EdgeInsets.only(right: 16.0, left: 16, top: 65),
          child: FutureBuilder<List<ProductModal>>(
            future: AllProductsService().getAllProducts(),
            builder: (context, snapshot) {

              if (snapshot.hasData) {
                List<ProductModal> products = snapshot.data!;
                return GridView.builder(
                  itemCount: products.length,
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.4,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 70),
                  itemBuilder: (context, index) {
                    return  CardItem(product: products[index],);
                  },
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          )),
    );
  }
}
