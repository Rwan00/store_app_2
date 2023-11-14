import '../helper/api.dart';
import '../models/product_model.dart';

class AllProductsService {
  Future<List<ProductModal>> getAllProducts() async {
    List<dynamic> data =
        await API().get(url: 'https://fakestoreapi.com/products');

    List<ProductModal> productsList = [];

    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModal.fromJson(data[i]));
    }

    return productsList;
  }
}
