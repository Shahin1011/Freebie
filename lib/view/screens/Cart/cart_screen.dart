import 'package:flutter/material.dart';
import 'package:freebie/view/components/custom_nav_bar/navbar.dart';


class CartScreen extends StatefulWidget{
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("CartScreen!"),
      ),
      bottomNavigationBar: NavBar(currentIndex: 3),
    );
  }
}