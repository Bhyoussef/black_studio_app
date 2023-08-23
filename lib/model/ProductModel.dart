class Product {
  final String id;
  final String name;
  final String category;
  final double price;
  final List<String> imageAssets;
  int quantity;


  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.imageAssets,
    this.quantity = 1
  });
}

List<Product> dummyProducts = [
  Product(
    id: '1',
    name: 'Product 1',
    category: 'Category A',
    price: 1500,
    imageAssets: ['assets/demo/Rectangle 1137.png','assets/demo/Rectangle 1137.png','assets/demo/Rectangle 1137.png'], // Replace with actual asset paths
  ),
  Product(
    id: '2',
    name: 'Product 2',
    category: 'Category B',
    price: 2000,
    imageAssets: ['assets/demo/Rectangle 1134.png','assets/demo/Rectangle 1134.png'], // Replace with actual asset paths
  ),
  Product(
    id:'3',
    name: 'Product 3',
    category: 'Category C',
    price: 2000,
    imageAssets: ['assets/demo/Rectangle 1135.png','assets/demo/Rectangle 1134.png'], // Replace with actual asset paths
  ),
];


class CartItem {
  Product product;
  int quantity;
  CartItem({
    required this.product,
    this.quantity = 1,
  });

  @override
  String toString() => 'CartItem(product: $product, quantity: $quantity)';
}