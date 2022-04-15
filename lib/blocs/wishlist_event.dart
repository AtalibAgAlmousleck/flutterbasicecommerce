import 'package:anorshop/models/product_model.dart';
import 'package:equatable/equatable.dart';

abstract class WishlisEvent extends Equatable {
  const WishlisEvent();

  @override
  List<Object> get props => [];
}

class StartWishlist extends WishlisEvent {}

class AddWishlistProduct extends WishlisEvent {
  final Product product;

  const AddWishlistProduct(this.product);

   @override
  List<Object> get props => [];
}


class RemoveWishlist extends WishlisEvent {}

class RemoveWishlistProduct extends WishlisEvent {
  final Product product;

  const RemoveWishlistProduct(this.product);

   @override
  List<Object> get props => [];
}