import 'package:flutter/material.dart';

import '../model/items.dart';

class Items with ChangeNotifier {
  List<ItemsModel> cartItems = [];
  final List<ItemsModel> items = [
    ItemsModel(
        id: '1',
        name: 'Fresh mango from myPantry.com order now for more discount',
        cost: '100',
        img:
            'https://image.shutterstock.com/image-photo/fresh-delicious-sweet-mangoes-on-600w-646447264.jpg'),
    ItemsModel(
        id: '2',
        name: 'item - 2',
        cost: '50',
        img:
            'https://image.shutterstock.com/image-photo/orange-background-600w-568549888.jpg'),
    ItemsModel(
        id: '3',
        name: 'item - 3',
        cost: '75',
        img:
            'https://image.shutterstock.com/image-photo/bananas-grapes-600w-518328943.jpg'),
    ItemsModel(
        id: '4',
        name: 'item - 4',
        cost: '50',
        img:
            'https://image.shutterstock.com/image-photo/pineapple-slices-isolated-on-white-600w-124985672.jpg'),
    ItemsModel(
        id: '5',
        name: 'item - 5',
        cost: '75',
        img:
            'https://image.shutterstock.com/image-photo/whole-half-watermelon-isolated-on-600w-1422071948.jpg'),
    ItemsModel(
        id: '6',
        name: 'item - 6',
        cost: '20',
        img:
            'https://image.shutterstock.com/image-photo/whole-sliced-japanese-melonshoney-melon-600w-1373483270.jpg'),
    ItemsModel(
        id: '7',
        name: 'item - 7',
        cost: '500',
        img:
            'https://image.shutterstock.com/image-photo/fresh-ripe-jackfruit-sweet-segment-600w-681635947.jpg'),
  ];

  getItems() {
    return items;
  }

  getCartItems() {
    notifyListeners();
    return cartItems;
  }

  addItemInCart(item) {
    this.cartItems.add(item);
    getItems();
  }
}
