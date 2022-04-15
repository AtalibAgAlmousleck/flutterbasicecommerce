import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({required this.name, required this.imageUrl});

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(name: 'Tshirt', imageUrl: 'assets/images/img5.jpg'),
    Category(name: 'Tshirt One', imageUrl: 'assets/images/img6.jpg'),
    Category(name: 'Tshirt Two', imageUrl: 'assets/images/img7.jpg'),
    Category(name: 'Tshirt Again', imageUrl: 'assets/images/img8.jpg')
  ];
}
