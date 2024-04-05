// ignore_for_file: missing_required_param

import 'package:store_app/Services/Api.dart';

class GetAllcategory {
  Future<List<dynamic>> getcategory() async {
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products/categories");

    return data;
  }
}
