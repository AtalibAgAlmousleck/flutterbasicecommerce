import 'package:anorshop/blocs/wishlist_event.dart';
import 'package:anorshop/blocs/wishlist_state.dart';
import 'package:bloc/bloc.dart';

class WishlisBlock extends Bloc<WishlisEvent, WishlistState> {
  WishlisBlock() : super(WishlistLoading());

  Stream<WishlistState> mapEventToState(
    WishlisEvent event,
  ) async* {

  }
  
}