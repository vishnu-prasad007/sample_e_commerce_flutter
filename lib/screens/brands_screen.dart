import 'package:flutter/material.dart';
import 'package:sample_e_commerce_flutter/models/brands_model.dart';
import 'package:sample_e_commerce_flutter/screens/brand_screen.dart';

import '../colors.dart';

class BrandsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brands'),
        backgroundColor: BrandColors.greyColor,
      ),
      body: GridView.builder(
          itemCount: brandModelList.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => BrandScreen(brandModelList[index])));
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      child: Image.network(
                        brandModelList[index].brandLogoLink,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(brandModelList[index].brandname)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
