import 'package:flutter/material.dart';

class PageTittle extends StatelessWidget {
   
  const PageTittle({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Classify transaction',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
                color: Colors.white),
            ),
            SizedBox(height: 15,),
            Text(
              'Classify this transaction into a particular category',
              style: TextStyle(
                fontSize: 20, 
                color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}