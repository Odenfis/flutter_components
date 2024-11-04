import 'package:flutter/material.dart';

class CustomCardType3 extends StatelessWidget{
  const CustomCardType3({super.key});
  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Column(
        children: [
          Image(
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA7XmqKuk8gqsOPvBlnZ37cos0dpI18jCz8Q&s')
            ),
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA7XmqKuk8gqsOPvBlnZ37cos0dpI18jCz8Q&s'))
        ],
      ),
    );
  }
}