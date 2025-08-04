import 'package:flutter/material.dart';
import 'package:freebie/utils/app_colors/app_colors.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/view/components/custom_button/custom_button.dart';
import 'package:freebie/view/components/custom_image/custom_image.dart';
import 'package:freebie/view/components/custom_royel_appbar/custom_royel_appbar.dart';
import 'package:freebie/view/components/custom_text_field/custom_text_field.dart';


class CheckoutScreen extends StatefulWidget{
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int selectedIndex = 0;
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Checkout",
        rightIcon: AppIcons.notificationIcon,
        rightOnTap: (){},

      ),

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Divider(
            thickness: 2,
            color: AppColors.grey_02,
          ),

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Delivery Address',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                ),
              ),
              InkWell(
                onTap: () {

                },
                child: Text(
                  'Change',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),

          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.location_on, color: Colors.grey[600],),
              SizedBox(width: 8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 2,),
                  Text(
                    '925 S Chugach St #APT 10, Alaska 99645',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.grey_03,
                    ),
                  ),

                ],
              ),
            ],
          ),

          SizedBox(height: 20,),
          Divider(
            thickness: 2,
            color: AppColors.grey_02,
          ),

          SizedBox(height: 20,),
          Text(
            'Payment Method',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          
          SizedBox(height: 16,),
          Row(

            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImage(imageSrc: AppIcons.cardIcon, ),
                      SizedBox(width: 4,),
                      Text(
                        'Card',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(width: 8,),
              Expanded(
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImage(imageSrc: AppIcons.cardIcon),
                      SizedBox(width: 4,),
                      Text(
                        'Cash',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(width: 8,),
              Expanded(
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImage(imageSrc: AppIcons.cardIcon),
                      SizedBox(width: 4,),
                      Text(
                        'Pay',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),

          SizedBox(height: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Order Summary',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 16,),
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
              SizedBox(height: 16,),
              Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      hintText: 'Enter Promo Code',
                      fieldBorderColor: AppColors.grey_02,
                      fieldBorderRadius: 10,
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Image.asset(
                          'assets/icons/promoIcon.png',
                          height: 24,
                          width: 24,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8,),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    child: Text(
                      'Apply',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),


              SizedBox(height: 65),
              CustomButton(
                onTap: (){},
                title: 'Place Order',
                fillColor: Colors.black,
              ),



            ],
          ),
          

        ],
      ),

    );
  }
}