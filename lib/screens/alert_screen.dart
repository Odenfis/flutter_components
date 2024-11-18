import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({super.key});

    void displayDialogAndroid(BuildContext context){
    showDialog(
      barrierDismissible: true, //cierre forzado en true
      context: context, 
      builder:(context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text('Alerta de Prueba'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Esto es el contenido interno de la alerta')
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
             child: const Text('Cancelar', style: TextStyle(fontSize: 18)))
        ],
      ),
      );
  }

    void displayDialogIOS(BuildContext context){
    showDialog(
      barrierDismissible: true, //cierre forzado en true
      context: context, 
      builder:(context) {
        return CupertinoAlertDialog(
          title: const Text('Alerta en IOS'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Por favor revisar si su contenido está bien escrito'),
              SizedBox(height: 15,),
              FlutterLogo(size: 80)
            ],          
          ),
          actions: [
            TextButton(
              onPressed: ()=> Navigator.pop(context),
              child: const Text('Aceptar', style: TextStyle(color: Colors.black),)
              )
          ],
        );
      }
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          //onPressed: () => displayDialogIOS(context),
          onPressed: () => Platform.isAndroid
          ? displayDialogAndroid(context)
          : displayDialogIOS(context),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'Procesar', 
              style: TextStyle(
                fontSize: 20,
                color: Colors.black)
              ),
          )
            ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.cloud_sync),
        onPressed: (){
          Navigator.pop(context);
        }
        ,
    ));
  }
}