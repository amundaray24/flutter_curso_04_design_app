import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
   
  const CardTable({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(
              color: Colors.lightBlue,
              icon: Icons.apps,
              label: 'General',
            ),
            _SingleCard(
              color: Colors.purple,
              icon: Icons.directions_bus_filled,
              label: 'Transport',
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.pink,
              icon: Icons.shopping_bag,
              label: 'Shopping',
            ),
            _SingleCard(
              color: Colors.indigo,
              icon: Icons.receipt_sharp,
              label: 'Bills',
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.blue,
              icon: Icons.movie,
              label: 'Entertainment',
            ),
            _SingleCard(
              color: Colors.green,
              icon: Icons.shopping_basket,
              label: 'Grocery',
            ),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(
              color: Colors.red,
              icon: Icons.work,
              label: 'Work',
            ),
            _SingleCard(
              color: Colors.teal,
              icon: Icons.school,
              label: 'School',
            ),
          ]
        )
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {

  final String label;
  final IconData icon;
  final Color color;
  
  const _SingleCard({
    required this.label,
    required this.icon,
    required this.color
  });

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: _CardStructure(
        color: color, 
        icon: icon,
        label: label
      )
    );
  }
}

class _CardBackground extends StatelessWidget {
  
  const _CardBackground({
    required this.child
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5 , sigmaY: 5 ),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}

class _CardStructure extends StatelessWidget {
  
  const _CardStructure({
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: Icon( icon, size: 35, color: Colors.white,),
        ),
        const SizedBox(height: 15),
        Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: 18
          ),
        )
      ],
    );
  }
}