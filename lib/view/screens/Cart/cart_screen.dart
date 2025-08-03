import 'package:flutter/material.dart';
import 'package:freebie/core/app_routes/app_routes.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/view/components/custom_nav_bar/navbar.dart';
import 'package:freebie/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:freebie/view/screens/Cart/widget/Cart_item_card.dart';
import 'package:freebie/model/cart_item_model.dart';
import 'package:get/get.dart';


class CartScreen extends StatefulWidget{
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  List<CartItem> cartItems = [
    CartItem(
      imageUrl: 'assets/icons/tshirtImg.png',
      title: 'Stylish Shirt',
      price: 49.99,
      size: '42',
    ),
    CartItem(
      imageUrl: 'assets/icons/tshirtImg.png',
      title: 'Stylish Shirt',
      price: 29.99,
      size: 'M',
    ),
    CartItem(
      imageUrl: 'assets/icons/tshirtImg.png',
      title: 'Stylish Shirt',
      price: 433.2,
      size: 'XL',
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

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.separated(
                itemCount: cartItems.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
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
              SizedBox(height: 24,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sub-total',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey
                        ),
                      ),
                      Text(
                          "\$5,005",
                          style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold,
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Vat (%)',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),
                      ),
                      Text(
                          "\$0.00",
                          style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold,
                          )
                      ),
                    ],
                  ),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping fee',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                        ),
                      ),
                      Text(
                          "\$80",
                          style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold,
                          )
                      ),
                    ],
                  ),

                  SizedBox(height: 16,),
                  Divider(thickness: 1, color: Colors.grey[300],),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black
                        ),
                      ),
                      Text(
                          "\$5,085",
                          style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800,
                          )
                      ),
                    ],
                  ),

                  SizedBox(height: 51,),

                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed(AppRoutes.checkoutScreen);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 90),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Go To Checkout",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white),
                        ),
                        SizedBox(width: 4,),
                        Icon(Icons.arrow_forward, color: Colors.white, size: 24,)
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),


        ),
      ),
      bottomNavigationBar: NavBar(currentIndex: 3),
    );
  }
}