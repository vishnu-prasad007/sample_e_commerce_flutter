import 'package:flutter/material.dart';
import 'package:sample_e_commerce_flutter/models/products_model.dart';
import 'package:sample_e_commerce_flutter/screens/product_screen.dart';

import '../colors.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Watches'),
        backgroundColor: BrandColors.greyColor,
      ),
      body: GridView.builder(
          itemCount: productsModelList.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            ProductScreen(productsModelList[index])));
              },
              child: Card(
                elevation: 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        height: 140,
                        width: 170,
                        child: Image.network(
                            productsModelList[index].productImage)),
                    Text(productsModelList[index].name),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '€ ' +
                              productsModelList[index].sellingPrice.toString(),
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '€ ' +
                              productsModelList[index].originalPrice.toString(),
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          (((productsModelList[index].originalPrice -
                                              productsModelList[index]
                                                  .sellingPrice) /
                                          productsModelList[index]
                                              .originalPrice) *
                                      100)
                                  .ceil()
                                  .toString() +
                              '% off',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
