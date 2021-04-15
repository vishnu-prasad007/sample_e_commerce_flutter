import 'package:flutter/material.dart';
import 'package:sample_e_commerce_flutter/models/products_model.dart';

import '../colors.dart';
import '../colors.dart';
import '../colors.dart';
import '../colors.dart';

class ProductScreen extends StatelessWidget {
  final ProductModel product;
  ProductScreen(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: BrandColors.greyColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(child: Image.network(product.productImage)),
            SizedBox(
              height: 15.0,
            ),
            Text(
              product.name,
            ),
            SizedBox(
              height: 15.0,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3.0),
                    border: Border.all(
                      color: Colors.green[100],
                    ),
                    color: Colors.green[100]),
                child: Text(
                  'Special price',
                  style: TextStyle(color: Colors.green[800]),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Text(
                  '€ ' + product.sellingPrice.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  product.originalPrice.toString(),
                  style: TextStyle(decoration: TextDecoration.lineThrough),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  (((product.originalPrice - product.sellingPrice) /
                                  product.originalPrice) *
                              100)
                          .ceil()
                          .toString() +
                      '% off',
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Container(
              child: InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Product Details',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'All Details',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 16.0,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 120.0,
            ),
            Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('ADD TO CART'),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          BrandColors.tailColorDark),
                    ),
                    onPressed: () {},
                    child: Text(
                      'BUY NOW',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
