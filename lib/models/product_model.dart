import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product(
      {required this.name,
      required this.category,
      required this.imageUrl,
      required this.price,
      required this.isRecommended,
      required this.isPopular});

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isPopular, isRecommended];

  static List<Product> products = [
    Product(
        name: 'name',
        category: 'category',
        imageUrl: 'assets/images/img5.jpg',
        price: 25.22,
        isRecommended: true,
        isPopular: true),
    Product(
        name: 'New name',
        category: 'category',
        imageUrl: 'assets/images/img6.jpg',
        price: 25.22,
        isRecommended: true,
        isPopular: true),
    Product(
        name: 'name',
        category: 'Category B',
        imageUrl: 'assets/images/img7.jpg',
        price: 25.22,
        isRecommended: true,
        isPopular: true),
    Product(
        name: 'name',
        category: 'Category C',
        imageUrl: 'assets/images/img8.jpg',
        price: 25.22,
        isRecommended: true,
        isPopular: true)
  ];
}
