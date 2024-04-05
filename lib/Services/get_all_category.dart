// ignore_for_file: unnecessary_brace_in_string_interps, missing_required_param
import 'package:store_app/Services/Api.dart';
import 'package:store_app/model/product_model.dart';

class GetAllcategory {
  Future<List<ProductModel>> getAllcategory(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: "https://fakestoreapi.com/products/category/${categoryName}");
    List<ProductModel> categoryList = [];
    for (int i = 0; i < data.length; i++) {
      categoryList.add(ProductModel.fromjeson(data[i]));
    }
    return categoryList;
  }
}
