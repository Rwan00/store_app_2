import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModal>> getCategoriesProducts({required String categoryName}) async{
    http.Response response = await http.get(Uri.parse("https://fakestoreapi.com/products/category/$categoryName"));

    if(response.statusCode == 200)
      {
        List<dynamic> data = jsonDecode(response.body);

        List<ProductModal> productsList = [];

        for(int i = 0; i < data.length;i++)
        {
          productsList.add(ProductModal.fromJson(data[i]));
        }

        return productsList;
      }
    else
      {
        throw Exception("There Is A Problem With Status Code ${response.statusCode}");
      }
  }
}