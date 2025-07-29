import 'package:flutter/material.dart';
import 'package:freebie/core/app_routes/app_routes.dart';
import 'package:freebie/utils/app_colors/app_colors.dart';
import 'package:freebie/utils/app_icons/app_icons.dart';
import 'package:freebie/view/components/custom_image/custom_image.dart';
import 'package:freebie/view/components/custom_nav_bar/navbar.dart';
import 'package:freebie/view/components/custom_text/custom_text.dart';
import 'package:freebie/view/screens/home/widget/cutom_product_card.dart';
import 'package:get/get.dart';


class HomeScreen extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 50,),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Discover",
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                IconButton(
                  onPressed: (){},
                  icon: CustomImage(
                    imageSrc: AppIcons.notificationIcon,
                    height: 24,
                    width: 24,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.grey_02,
                        width: 1.5,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                    child: Row(
                      children: [
                        CustomImage(imageSrc: AppIcons.searchIcon, imageColor: Colors.grey, height: 25, width: 25,),
                        SizedBox(width: 12),
                        Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Search for clothes...",
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.grey_03,
                                ),
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.zero,
                              ),
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                        ),
                  
                        CustomImage(imageSrc: AppIcons.voiceIcon),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          builder: (context) => FilterBottomSheet(),
                        );
                      },

                      child: CustomImage(
                        imageSrc: AppIcons.filterIcon,
                        imageColor: Colors.white,
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ),
                )
              ],
            ),


            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 19,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.65,

                ),
                itemCount: 12,
                itemBuilder: (BuildContext context, int index){
                  return CustomProductCard (
                    imageUrl: 'https://stolen.com.bd/storage/into-wild-min.jpg',
                    title: 'Regular Fit T-shirt',
                    price: '৳1,090',
                    onTap: () {
                      Get.toNamed(AppRoutes.productDetailsScreen);
                    },
                    onFavoriteTap: () {

                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(currentIndex: 0),
    );
  }

}



class FilterBottomSheet extends StatefulWidget {
  @override
  _FilterBottomSheetState createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  double _minPrice = 0;
  double _maxPrice = 100;
  RangeValues _priceRange = const RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 10,
        top: 16,
        left: 24,
        right: 24,
      ),
      child: Wrap(
        children: [
          Center(
            child: Container(
              width: 50,
              height: 4,
              margin: EdgeInsets.only(bottom: 14),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Filters", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
                color: Colors.black,
              ),
            ],
          ),

          SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Price", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('\$${_priceRange.start.round()}'),
                  Text(" - "),
                  Text('\$${_priceRange.end.round()}'),
                ],
              ),
            ],
          ),

          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbColor: Colors.cyan,
              //rangeThumbShape: RoundRangeSliderThumbShape(enabledThumbRadius: 8),
            ),
            child: RangeSlider(
              values: _priceRange,
              min: _minPrice,
              max: _maxPrice,
              divisions: 100,
              labels: RangeLabels(
                '\$${_priceRange.start.round()}',
                '\$${_priceRange.end.round()}',
              ),
              activeColor: Colors.black,
              inactiveColor: Colors.grey,

              onChanged: (RangeValues values) {
                setState(() {
                  _priceRange = values;
                });
              },
            ),
          ),

          SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {

                //Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Apply Filters",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
