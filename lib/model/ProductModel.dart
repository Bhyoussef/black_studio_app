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
    name: 'Women Grey Lace Empire Top',
    category: 'Athena',
    price: 1500,
    imageAssets: ['https://athenalifestyle.com/cdn/shop/products/4_6c34855f-c449-4447-9d25-4156d4431fae_900x.jpg?v=1667454515','https://athenalifestyle.com/cdn/shop/products/ATP-7612_1080x.jpg?v=1667454514','https://athenalifestyle.com/cdn/shop/products/8_67aee5ba-79bc-4657-92b7-c054590692c2_1080x.jpg?v=1667454518','https://athenalifestyle.com/cdn/shop/products/5_2472c0d2-aeab-4159-a407-861c4c6717a3_1080x.jpg?v=1667454515'], // Replace with actual asset paths
  ),
  Product(
    id:'2',
    name: 'Women Grey Lace Empire Top',
    category: 'Athena',
    price: 2000,
    imageAssets: ['https://athenalifestyle.com/cdn/shop/products/3_04b33499-4032-4691-84e2-e9e206b48cb2_1080x.jpg?v=1669099682','https://athenalifestyle.com/cdn/shop/products/5_d2c30260-d1ed-4db9-a3f1-0e4721a5b1db_1080x.jpg?v=1669099684','https://athenalifestyle.com/cdn/shop/products/1_9f0b865b-5506-4007-8381-ba84d870ed39_1800x1800.jpg?v=1669099682','https://athenalifestyle.com/cdn/shop/products/6_2ddafd9f-ccec-477f-9422-9cc39490fea9_1800x1800.jpg?v=1669099682'], // Replace with actual asset paths
  ),
  Product(
    id:'3',
    name: 'Athena Women Red Wrap Top',
    category: 'Athena',
    price: 2000,
    imageAssets: ['https://athenalifestyle.com/cdn/shop/products/20-07-2201263_1080x.jpg?v=1660710228',
      'https://athenalifestyle.com/cdn/shop/products/20-07-2201265_1080x.jpg?v=1660710228',
      'https://athenalifestyle.com/cdn/shop/products/20-07-2201269_1080x.jpg?v=1660710228',
      'https://athenalifestyle.com/cdn/shop/products/20-07-2201292_900x.jpg?v=1660710229'


    ], // Replace with actual asset paths
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