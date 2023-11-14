import 'package:store_app/models/product_model.dart';

import '../helper/api.dart';

class CategoriesService {
  Future<List<ProductModal>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await API()
        .get(url: "https://fakestoreapi.com/products/category/$categoryName");

    List<ProductModal> productsList = [];

    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModal.fromJson(data[i]));
    }

    return productsList;
  }
}
