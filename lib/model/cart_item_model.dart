
class CartItem {
  final String imageUrl;
  final String title;
  final double price;
  final String size;
  int quantity;

  CartItem({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.size,
    this.quantity = 1,
  });
}
