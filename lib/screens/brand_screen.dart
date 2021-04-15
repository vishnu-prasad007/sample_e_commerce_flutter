import 'package:flutter/material.dart';
import 'package:sample_e_commerce_flutter/models/brands_model.dart';

import '../colors.dart';

class BrandScreen extends StatelessWidget {
  final BrandModel brand;
  BrandScreen(this.brand);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(brand.brandname),
        backgroundColor: BrandColors.greyColor,
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Image.network(brand.brandLogoLink),
            SizedBox(
              height: 16.0,
            ),
            Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ],
        ),
      ),
    );
  }
}
