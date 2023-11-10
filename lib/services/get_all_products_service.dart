import 'dart:convert';

import '../models/product_model.dart';
import 'package:http/http.dart' as http;

class AllProductsService{
  Future<List<ProductModal>> getAllProducts() async{
    http.Response response = await http.get(Uri.parse("https://fakestoreapi.com/products"));

    List<dynamic> data = jsonDecode(response.body);

    List<ProductModal> productsList = [];

    for(int i = 0; i < data.length;i++)
      {
        productsList.add(ProductModal.fromJson(data[i]));
      }

    return productsList;
  }
}