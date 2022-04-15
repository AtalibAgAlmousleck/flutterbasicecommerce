import 'package:anorshop/models/product_model.dart';
import 'package:equatable/equatable.dart';

class WishModel extends Equatable {
  final List<Product> products;

  const WishModel({this.products = const <Product>[]});

  @override
  List<Object?> get props => [products];
}
