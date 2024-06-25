import 'package:flutter/material.dart';
import 'package:new_balance/models/shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Phantom', 
      price: '236', 
      imagePath: 'lib/images/nb_phantom.png', 
      description: 'A stealthy and sleek design, possibly emphasizing a lightweight and agile feel. It could imply a shoe designed for speed and precision, suitable for various running distances.',
    ),

    Shoe(
      name: 'Grey Runs', 
      price: '382', 
      imagePath: 'lib/images/nb_greyruns.png', 
      description: 'This color choice often signifies versatility and urban style, suitable for blending seamlessly into various environments.',
    ),

    Shoe(
      name: 'Light Cliff', 
      price: '236', 
      imagePath: 'lib/images/nb_lightcliff.png', 
      description: ' It could imply a shoe designed for comfort over long distances or rough terrain.',
    ),

    Shoe(
      name: 'Tokyo', 
      price: '382', 
      imagePath: 'lib/images/nb_tokyo.png', 
      description: 'It could appeal to runners looking for a shoe that balances style with performance, ideal for city running environments.',
    ),

  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list if shoe sale
  List<Shoe> getShoeList (){
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart (){
    return userCart;
  }

  //add item
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}