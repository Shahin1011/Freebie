import 'package:flutter/material.dart';
import 'package:freebie/view/components/custom_nav_bar/navbar.dart';
import 'package:freebie/view/components/custom_royel_appbar/custom_royel_appbar.dart';


class SearchScreen extends StatefulWidget{
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    CustomRoyelAppbar(
      leftIcon: true,
      titleName: "Search",
    );
    return Scaffold(
      bottomNavigationBar: NavBar(currentIndex: 1),
    );
  }
}