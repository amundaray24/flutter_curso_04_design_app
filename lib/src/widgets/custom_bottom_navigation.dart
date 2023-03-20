import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {

  static const Map<String,IconData> buttons = {
    'Calendar': Icons.calendar_month_outlined, 
    'Graphic': Icons.bar_chart, 
    'Users': Icons.person
  };
   
  const CustomBottomNavigation({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      items: buttons.entries.map((e) {
        return BottomNavigationBarItem(
          icon: Icon(e.value, size: 30,),
          label: e.key
        );
      }).toList()
    );
  }
}