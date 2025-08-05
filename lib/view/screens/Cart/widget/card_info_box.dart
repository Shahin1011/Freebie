import 'package:flutter/material.dart';

class CardInfoBox extends StatelessWidget {
  final String cardNumber;
  final VoidCallback? onEdit;

  const CardInfoBox({
    super.key,
    required this.cardNumber,
    this.onEdit,
  });

  String detectCardType(String number) {
    if (number.startsWith('4')) return 'VISA';
    if (number.startsWith('5')) return 'MasterCard';
    return 'Card';
  }

  String getCardLogo(String cardType) {
    switch (cardType) {
      case 'VISA':
        return 'assets/icons/visaIcon.png';
      case 'MasterCard':
        return 'assets/icons/masterIcon.png';
      default:
        return 'assets/icons/visaIcon.png'; // default fallback
    }
  }

  String maskCardNumber(String number) {
    if (number.length < 4) return '****';
    return '**** **** **** ${number.substring(number.length - 4)}';
  }

  @override
  Widget build(BuildContext context) {
    final cardType = detectCardType(cardNumber);
    final cardLogo = getCardLogo(cardType);
    final masked = maskCardNumber(cardNumber);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Image.asset(cardLogo, height: 20),
          const SizedBox(width: 8),
          Text(
            masked,
            style: const TextStyle(fontSize: 16),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: onEdit ?? () {},
          ),
        ],
      ),
    );
  }
}
