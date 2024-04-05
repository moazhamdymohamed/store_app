// ignore_for_file: missing_required_param

import 'package:store_app/Services/Api.dart';
import 'package:store_app/model/product_model.dart';

class AllproductServices {
  Future<List<ProductModel>> getAllproduct() async {
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products");
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(ProductModel.fromjeson(data[i]));
    }
    return productList;
  }
}
