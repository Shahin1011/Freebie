import 'package:flutter/material.dart';
import 'package:freebie/utils/app_colors/app_colors.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';

class CartItemCard extends StatelessWidget {
  final String title;
  final String size;
  final double price;
  final String imageUrl;
  final int quantity;
  final VoidCallback onDelete;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  const CartItemCard({
    super.key,
    required this.title,
    required this.size,
    required this.price,
    required this.imageUrl,
    required this.quantity,
    required this.onDelete,
    required this.onIncrease,
    required this.onDecrease,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.grey_03,
          width: 0.2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: imageUrl.startsWith('http')
                ? Image.network(imageUrl, width: 83, height: 79, fit: BoxFit.cover)
                : Image.asset(imageUrl, width: 83, height: 79, fit: BoxFit.cover),
          ),


          const SizedBox(width: 16),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                          Text('Size $size', style: TextStyle(color: Colors.grey[600])),
                        ],
                      ),

                      SizedBox(height: 18,),
                      Text('\$ $price',
                          style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold,
                          )
                      ),
                    ],
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.delete_outline, color: Colors.red),
                      onPressed: onDelete,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: onDecrease,
                          icon: Image.asset(AppIcons.abstractIcon),
                        ),
                        Text('$quantity', style: const TextStyle(fontSize: 16)),
                        IconButton(
                          onPressed: onIncrease,
                          icon: Image.asset(AppIcons.addIcon),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),


        ],
      ),
    );
  }
}
