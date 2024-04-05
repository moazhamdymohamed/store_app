// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/Services/updateProduct.dart';
import 'package:store_app/model/product_model.dart';
import 'package:store_app/screens/widget/customButtom.dart';
import 'package:store_app/screens/widget/customTextformField.dart';

class UpdataPage extends StatefulWidget {
  UpdataPage({super.key});
  static String id = "updata product";

  @override
  State<UpdataPage> createState() => _UpdataPageState();
}

class _UpdataPageState extends State<UpdataPage> {
  String? productname, desc, image;
  bool isloading = true;
  String? price;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("UpData product"),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 90,
                ),
                CustomTextFiled(
                  onChange: (date) {
                    productname = date;
                  },
                  hintext: 'Product name',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFiled(
                  onChange: (date) {
                    desc = date;
                  },
                  hintext: 'Descraption',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFiled(
                  InputType: TextInputType.number,
                  onChange: (date) {
                    price = date;
                  },
                  hintext: 'price',
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextFiled(
                  onChange: (date) {
                    image = date;
                  },
                  hintext: 'image',
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  text: "Update",
                  ontap: () {
                    isloading = false;
                    setState(() {});
                    try {
                      Updateproduct(product);
                    } catch (e) {
                      print(e.toString());
                    }
                    isloading = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void Updateproduct(ProductModel product) {
    UpdateProduct().updateProduct(
        title: productname == null ? product.title : productname!,
        price: price == null ? product.price.toString() : price!,
        desc: desc == null ? product.descreption : desc!,
        image: image == null ? product.image : image!,
        category: product.image);
  }
}
