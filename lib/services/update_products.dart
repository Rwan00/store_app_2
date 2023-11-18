import '../helper/api.dart';
import '../models/product_model.dart';

class UpdateProductsService {
  Future<ProductModal> updateProduct(
      {required String title,
      required String price,
      required String desc,
      required String img,
      required int id,
      required String category}) async {
    print("product id = $id");
    Map<String, dynamic> data = await API().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        "title": title,
        "price": price,
        "description": desc,
        "image": img,
        "category": category
      },
    );
    return ProductModal.fromJson(data);
  }
}
