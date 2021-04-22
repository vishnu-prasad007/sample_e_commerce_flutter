import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sample_e_commerce_flutter/colors.dart';
import 'package:sample_e_commerce_flutter/screens/brands_screen.dart';
import 'package:sample_e_commerce_flutter/screens/dashboard_screen.dart';
import 'package:sample_e_commerce_flutter/screens/products_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fab!'),
          backgroundColor: BrandColors.greyColor,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Fab',
                  style: TextStyle(fontSize: 26.0),
                ),
              ),
              ListTile(
                title: Text('Login'),
                leading: Icon(Icons.login),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
              ListTile(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => DashBoardScreen()));
                },
                title: Text('Dashboard'),
                leading: Icon(Icons.dashboard),
              ),
              ListTile(
                title: Text('Brand'),
                leading: Icon(Icons.branding_watermark),
              ),
              ListTile(
                title: Text('Product'),
                leading: Icon(Icons.category_sharp),
              ),
              ListTile(
                title: Text('Shop'),
                leading: Icon(Icons.shopping_bag),
              ),
              ListTile(
                title: Text('Blog'),
                leading: Icon(Icons.book),
              ),
            ],
          ),
        ),
        body: Container(
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    NoonLoopingDemo(),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Brands'),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => BrandsScreen()));
                              },
                              child: Text('View all',
                                  style: TextStyle(
                                      color: BrandColors.tailColorDark)))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: InkWell(
                      child: Card(
                        child: Image.network(
                          brandsImageList[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }, childCount: brandsImageList.length),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                SizedBox(
                  height: 18.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Trending Products'),
                      TextButton(
                          onPressed: () {},
                          child: Text('View all',
                              style:
                                  TextStyle(color: BrandColors.tailColorDark)))
                    ],
                  ),
                ),
              ])),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ProductsScreen()));
                      },
                      child: Card(
                        child: Image.network(
                          trendingProducts[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }, childCount: trendingProducts.length),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                SizedBox(
                  height: 18.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Featured Products'),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'View all',
                            style: TextStyle(color: BrandColors.tailColorDark),
                          ))
                    ],
                  ),
                ),
              ])),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: InkWell(
                      onTap: () {},
                      child: Card(
                          child: Stack(
                        // fit: StackFit.expand,
                        children: [
                          Image.network(
                            featuredProducts[index],
                            fit: BoxFit.contain,
                          ),
                          Container(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Product Name',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 18.0,
                                ),
                                Text(
                                  '€126',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            alignment: Alignment.bottomCenter,
                          )
                        ],
                      )),
                    ),
                  );
                }, childCount: featuredProducts.length),
              ),
            ],
          ),
        ));
  }
}

final List<String> featuredProducts = [
  'https://images.unsplash.com/photo-1523475496153-3d6cc0f0bf19?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
  'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80',
  'https://images.unsplash.com/photo-1592509340100-04d14b884b7f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
  'https://images.unsplash.com/photo-1527799820374-dcf8d9d4a388?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8aGFpciUyMGRyeWVyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'
];

final List<String> trendingProducts = [
  'https://images.unsplash.com/photo-1523475496153-3d6cc0f0bf19?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
  'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80',
  'https://images.unsplash.com/photo-1551028719-00167b16eac5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80',
  'https://images.unsplash.com/photo-1527799820374-dcf8d9d4a388?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8aGFpciUyMGRyeWVyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'
];

final List<String> brandsImageList = [
  'https://images.unsplash.com/photo-1609979710027-18bd57dbefa0?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
  'https://images.unsplash.com/photo-1535415493710-bdf0b2dc725e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80',
  'https://images.unsplash.com/photo-1608248543803-ba4f8c70ae0b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=950&q=80',
  'https://images.unsplash.com/photo-1614231125961-38323d6c485b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80'
];

final List<String> imgList = [
  'https://images.unsplash.com/photo-1558171813-4c088753af8f?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  'https://images.unsplash.com/flagged/photo-1589173577838-123503190c43?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OTB8fHdvbW9uJTIwZHJlc3N8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
  'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1050&q=80',
  'https://images.unsplash.com/photo-1608248543803-ba4f8c70ae0b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=950&q=80',
];

final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        child: Text(
                          'Image',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

class NoonLoopingDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        initialPage: 2,
        autoPlay: true,
      ),
      items: imageSliders,
    ));
  }
}
