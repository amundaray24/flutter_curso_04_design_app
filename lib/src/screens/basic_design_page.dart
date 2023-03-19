import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/landscape.jpg')),
          
          const _Tittle(
            tittle: 'Waraira Repano',
            subTittle: 'Distrito Capital, Venezuela',
            stars: '9.0 / 10',
          ),
          
          const _ButtonSection(),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: const Text(
              'Ad reprehenderit cillum nostrud culpa labore sunt. Laborum magna dolore labore occaecat reprehenderit do in ea deserunt aute fugiat. Qui in aute ipsum cillum consectetur occaecat in. Irure laboris ex ea nulla incididunt ut aliqua occaecat. Sit reprehenderit veniam reprehenderit consectetur et laboris consequat quis deserunt velit duis quis in. Velit eu ea qui commodo dolore non est reprehenderit eiusmod amet.',
              textAlign: TextAlign.justify,
            )
          )
        ],
      ),
    );
  }
}

class _Tittle extends StatelessWidget {

  final String tittle;
  final String subTittle;
  final String stars;

  const _Tittle({
    required this.tittle, 
    required this.subTittle, 
    required this.stars,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tittle, style: const TextStyle(fontWeight: FontWeight.bold),),
              Text(subTittle, style: const TextStyle(color: Colors.black45),),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red,),
          Text(stars),
        ],
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {

  static const Map<String,IconData> buttons = {
    'Call': Icons.phone, 
    'Route': Icons.send, 
    'Share': Icons.share
  };

  const _ButtonSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: buttons.entries.map((entry) {
          return _Button(
            tittle: entry.key,
            icon: entry.value,
          );
        }).toList()
      ),
    );
  }
}

class _Button extends StatelessWidget {

  final String tittle;
  final IconData icon;

  const _Button({
    required this.tittle, 
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        Text(tittle, style: const TextStyle(color: Colors.blue),)
      ]
    );
  }
}