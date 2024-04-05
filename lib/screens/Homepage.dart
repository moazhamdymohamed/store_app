// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app/Services/get_all_prouducts.dart';
import 'package:store_app/model/product_model.dart';
import 'package:store_app/screens/widget/custom_card.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  static String id = "Homepage";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ))
          ],
          elevation: 0,
          centerTitle: true,
          title: Text(
            "New Trend",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 65),
            child: FutureBuilder<List<ProductModel>>(
                future: AllproductServices().getAllproduct(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<ProductModel> products = snapshot.data!;

                    return GridView.builder(
                        itemCount: products.length,
                        clipBehavior: Clip.none,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.4,
                            crossAxisSpacing: 7,
                            mainAxisSpacing: 60),
                        itemBuilder: (context, index) {
                          return Customcard(
                            product: products[index],
                          );
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                })));
  }
}
