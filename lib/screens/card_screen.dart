import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        children: const [
          CustomCardType1(),
          CustomCardType2(),
          CustomCardType1(),
          CustomCardType2(),
          CustomCardType1(),
          CustomCardType2(),
          CustomCardType1(),

        ],
      )
    );
  } 
} 
  