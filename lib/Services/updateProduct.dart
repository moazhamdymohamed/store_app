// ignore_for_file: missing_required_param, file_names
import 'package:store_app/Services/Api.dart';
import 'package:store_app/model/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().put(
      url: "https://fakestoreapi.com/products",
      body: {
        "title": title,
        "price": price,
        "desc": desc,
        "image": image,
        "category": category,
      },
    );
    return ProductModel.fromjeson(data);
  }
}
