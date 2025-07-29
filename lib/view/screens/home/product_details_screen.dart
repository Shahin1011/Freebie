import 'package:flutter/material.dart';
import 'package:freebie/utils/app_colors/app_colors.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/view/components/custom_image/custom_image.dart';
import 'package:freebie/view/components/custom_royel_appbar/custom_royel_appbar.dart';

class ProductDetailsScreen extends StatefulWidget{
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {

  final List<String> sizes = ['S', 'M', 'L'];
  String selectedSize = 'M';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomRoyelAppbar(
        leftIcon: true,
        titleName: "Details",
        rightIcon: AppIcons.notificationIcon,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 368,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage('https://stolen.com.bd/storage/into-wild-min.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.favorite_border_outlined),
                        color: Colors.black,
                        onPressed: (){},
                      ),
                    ),
                  ),
                )
              ],
            ),

            SizedBox(height: 12,),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Regular Fit Slogan',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 13,),

            Row(
              children: [
                Icon(Icons.star, color: Colors.orange,size: 20,),
                SizedBox(width: 6,),
                Text('4.0/5', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 4),
                Text('(45 reviews)', style: TextStyle(color: Colors.grey)),

              ],
            ),

            SizedBox(height: 13,),
            Text(
              'The name says it all, the right size slightly snugs the body leaving enough room for comfort in the sleeves and waist.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppColors.grey_03,
              ),
            ),

            SizedBox(height: 12,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Choose size',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            SizedBox(height: 12,),
            Row(
              children: sizes.map((size) {
                final bool isSelected = size == selectedSize;

                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ChoiceChip(
                    label: Text(
                      size,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                    selected: isSelected,
                    onSelected: (val) {
                      setState(() {
                        selectedSize = size;
                      });
                    },
                    selectedColor: Colors.black,
                    backgroundColor: Colors.white,
                    showCheckmark: false,
                    padding: const EdgeInsets.all(12.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              }).toList(),
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Price',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.grey_03,
                      ),
                    ),
                    Text(
                      '\$1,090',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                ElevatedButton.icon(
                  onPressed: (){},
                  icon: CustomImage(imageSrc: AppIcons.cartIcon),
                  label: Text(
                    'Add to Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )
                  ),
                ),

              ],
            ),
            SizedBox(height: 20,)

          ],
        ),
      ),
    );
  }
}