import 'package:flutter/material.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/view/components/custom_nav_bar/navbar.dart';
import 'package:freebie/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:freebie/view/screens/Cart/widget/Cart_item_card.dart';
import 'package:freebie/model/cart_item_model.dart';


class CartScreen extends StatefulWidget{
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  List<CartItem> cartItems = [
    CartItem(
      imageUrl: 'https://stolen.com.bd/storage/solid/sky-blue-solid-tshirt.jpg',
      title: 'Cool Shoes',
      price: 49.99,
      size: '42',
    ),
    CartItem(
      imageUrl: 'https://stolen.com.bd/storage/solid/sky-blue-solid-tshirt.jpg',
      title: 'Stylish Shirt',
      price: 29.99,
      size: 'M',
    ),
  ];

  void updateQuantity(int index, int delta) {
    setState(() {
      cartItems[index].quantity += delta;
      if (cartItems[index].quantity < 1) {
        cartItems[index].quantity = 1;
      }
    });
  }

  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "My Cart",
        rightIcon: AppIcons.notificationIcon,
        rightOnTap: (){},
      ),

      body: ListView.separated(
        itemCount: cartItems.length,
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return CartItemCard(
            title: item.title,
            size: item.size,
            imageUrl: item.imageUrl,
            price: item.price,
            quantity: item.quantity,
            onIncrease: () => updateQuantity(index, 1),
            onDecrease: () => updateQuantity(index, -1),
            onDelete: () => removeItem(index),
          );
        },
      ),
      bottomNavigationBar: NavBar(currentIndex: 3),
    );
  }
}