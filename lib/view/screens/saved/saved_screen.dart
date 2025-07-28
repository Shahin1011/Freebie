import 'package:flutter/material.dart';
import 'package:freebie/view/components/custom_nav_bar/navbar.dart';


class SavedScreen extends StatefulWidget{
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("SavedScreen!"),
      ),
      bottomNavigationBar: NavBar(currentIndex: 2),
    );
  }
}