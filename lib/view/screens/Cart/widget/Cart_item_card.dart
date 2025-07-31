import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(imageUrl, width: 70, height: 70, fit: BoxFit.cover),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                const SizedBox(height: 4),
                Text('Size $size', style: TextStyle(color: Colors.grey[600])),
                const SizedBox(height: 8),
                Text('\$ $price',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          Column(
            children: [
              IconButton(
                icon: const Icon(Icons.delete_outline, color: Colors.red),
                onPressed: onDelete,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: onDecrease,
                    icon: const Icon(Icons.remove),
                  ),
                  Text('$quantity', style: const TextStyle(fontSize: 16)),
                  IconButton(
                    onPressed: onIncrease,
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
