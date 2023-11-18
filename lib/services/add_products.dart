import '../helper/api.dart';
import '../models/product_model.dart';

class AddProducts {
  Future<ProductModal> addProduct(
      {required String title,
      required String price,
      required String desc,
      required String img,
      required String category}) async {
    Map<String, dynamic> data = await API().post(
      url: 'https://fakestoreapi.com/products',
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
