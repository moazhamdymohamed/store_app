// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:store_app/model/product_model.dart';
import 'package:store_app/screens/ubdataProductPage.dart';

class Customcard extends StatelessWidget {
  Customcard({super.key, required this.product});
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdataPage.id, arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.grey.withOpacity(0.15),
                spreadRadius: 0,
                offset: const Offset(10, 10),
              )
            ]),
            child: Card(
                color: const Color.fromARGB(255, 255, 255, 255),
                elevation: 10,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.title.toLowerCase(),
                          style:const TextStyle(color: Colors.grey, fontSize: 8)),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(product.price.toString()),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                )),
          ),
          Positioned(
            top: -60,
            right: 25,
            child: Image.network(
              product.image,
              width: 100,
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
