import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {

  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Stack(
      children: const [
        _BackgroundGradient(),
        _PinkShapeGradient(),
      ]
    );
  }
}

class _BackgroundGradient extends StatelessWidget {
  
  const _BackgroundGradient();

  @override
  Widget build(BuildContext context) {
    return Container(decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2, 0.9],
      colors: [
    Color(0xff2E305F),
    Color(0xff202333)
      ]
    )
  ),);
  }
}

class _PinkShapeGradient extends StatelessWidget {
  
  const _PinkShapeGradient();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -100,
      left: -30,
      child: Transform.rotate(
        angle: -pi/5,
        child: Container(
          height: 360,
          width: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                  Color.fromRGBO(241, 142, 172, 1),
                  Color.fromRGBO(236, 98, 188, 1),
              ]
            )
          ),
        ),
      ),
    );
  }
}