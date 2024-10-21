//import 'package:fl_cmpuno/screens/alert_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Componentes en Flutter',
          style: TextStyle(
            color: Colors.white
          ),
          ),
        backgroundColor: Colors.indigo
      ),
      body: ListView.separated(
        itemBuilder:(context, index) => ListTile(
          leading: const Icon(Icons.settings_input_antenna,
                        color: Colors.indigo,),
          title: const Text('items de prueba'),
          trailing: const Icon(Icons.arrow_circle_down,
                        color: Colors.indigo,),
          onTap: () {
            //final ruta = MaterialPageRoute(builder:(context) => const AlertScreen());
            //Navigator.push(context, ruta);
            Navigator.pushNamed(context, 'card');
          },
        ),
        separatorBuilder:(context, index) => const Divider(),
        itemCount: 10),
      
    );
  }
}