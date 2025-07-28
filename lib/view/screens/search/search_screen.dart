import 'package:flutter/material.dart';
import 'package:freebie/view/components/custom_nav_bar/navbar.dart';


class SearchScreen extends StatefulWidget{
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("SearchScreen!"),
      ),
      bottomNavigationBar: NavBar(currentIndex: 1),
    );
  }
}