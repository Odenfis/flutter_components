//import 'package:fl_cmpuno/screens/alert_screen.dart';
import 'package:fl_cmpuno/router/app_routes.dart';
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
          leading: Icon(AppRoutes.menuOptions[index].icon),
          title: Text(AppRoutes.menuOptions[index].name),
          trailing: const Icon(Icons.arrow_circle_down,
                        color: Colors.indigo,),
          onTap: () {
            //final ruta = MaterialPageRoute(builder:(context) => const AlertScreen());
            //Navigator.push(context, ruta);
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ),
        separatorBuilder:(context, index) => const Divider(),
        itemCount: AppRoutes.menuOptions.length),
      
    );
  }
}