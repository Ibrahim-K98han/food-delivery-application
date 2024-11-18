class ProductModel {
  final String image, name, category;
  final double price, rate, distance;

  ProductModel({
    required this.image,
    required this.name,
    required this.category,
    required this.price,
    required this.rate,
    required this.distance,
  });
  
}
List<ProductModel> productModel = [
    ProductModel(
      image: 'assets/images/sapporo_miso_ramen.png',
      name: 'Sapporo Miso',
      category: 'Ramen',
      price: 3.9,
      rate: 5,
      distance: 150,
    ),
    ProductModel(
      image: 'assets/images/shrimp_fried_rice.png',
      name: 'Shrimp Fried Rice',
      category: 'Ramen',
      price: 4.5,
      rate: 5,
      distance: 180,
    ),
    ProductModel(
      image: 'assets/images/beef-burger.png',
      name: 'Beef Burger',
      category: 'Burger',
      price: 3.5,
      rate: 4.5,
      distance: 200,
    ),
    ProductModel(
      image: 'assets/images/cheese-burger.png',
      name: 'Cheese Burger',
      category: 'Burger',
      price: 3.5,
      rate: 3,
      distance: 150,
    ),
  ];