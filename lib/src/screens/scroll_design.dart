import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    const boxDecoration = BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5,0.5],
            colors: [
              Color(0xff5EE8C5),
              Color(0xff30BAD6)
            ]
          )
        );

    return Scaffold(
      body: Container(
        decoration: boxDecoration,
         child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            _Page1(),
            _Page2()
          ]
        ),
      ),
    );
  }
}

class _Page1 extends StatelessWidget {
  const _Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
     children: const [
       _Background(),
       _MainContent()
     ],
    );
  }
}

class _MainContent extends StatelessWidget {
  
  const _MainContent();

  @override
  Widget build(BuildContext context) {
    
    const textStyle = TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold);

    return Container(
      margin: const EdgeInsets.only(top: 150),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('11º', style: textStyle,),
          const Text('Miércoles', style: textStyle,),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white,)
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  
  const _Background();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png'))
    );
  }
}

class _Page2 extends StatelessWidget {
  
  const _Page2();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder()
          ), 
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: Text('Bienvenido', style: TextStyle(color: Colors.white, fontSize: 30))
          ),
        )
      ),
    );
  }
}