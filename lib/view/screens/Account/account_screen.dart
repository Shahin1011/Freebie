import 'package:flutter/material.dart';
import 'package:freebie/view/components/custom_nav_bar/navbar.dart';


class AccountScreen extends StatefulWidget{

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("AccountScreen!"),
      ),
      bottomNavigationBar: NavBar(currentIndex: 4),
    );
  }
}