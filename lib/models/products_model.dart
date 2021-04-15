class ProductModel {
  String name;
  int sellingPrice;
  int originalPrice;
  String productImage;
  ProductModel(
      this.name, this.originalPrice, this.sellingPrice, this.productImage);
}

List<ProductModel> productsModelList = [
  ProductModel('Product 1', 100, 80,
      'https://images.unsplash.com/photo-1554151447-b9d2197448f9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTh8fHdhdGNofGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'),
  ProductModel('Product 2', 120, 80,
      'https://images.unsplash.com/photo-1534153901-e20d84235a6a?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQyfHx3YXRjaHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'),
  ProductModel('Product 3', 150, 90,
      'https://images.unsplash.com/photo-1523170335258-f5ed11844a49?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8d2F0Y2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'),
  ProductModel('Product 4', 100, 70,
      'https://images.unsplash.com/photo-1518520247810-9d56f8bc5556?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTk4fHx3YXRjaHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'),
  ProductModel('Product 5', 100, 80,
      'https://images.unsplash.com/photo-1523475496153-3d6cc0f0bf19?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjMzfHx3YXRjaHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'),
  ProductModel('Product 6', 100, 60,
      'https://images.unsplash.com/photo-1524592094714-0f0654e20314?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8d2F0Y2h8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'),
  ProductModel('Product 7', 200, 180,
      'https://images.unsplash.com/photo-1526045431048-f857369baa09?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHdhdGNofGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'),
  ProductModel('Product 8', 100, 85,
      'https://images.unsplash.com/photo-1461141346587-763ab02bced9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjE0fHx3YXRjaHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60'),
];
