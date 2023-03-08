import 'package:flutter/material.dart';

class formulario extends StatefulWidget {
  const formulario({super.key});

  @override
  State<formulario> createState() => _formularioState();
}

class _formularioState extends State<formulario> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      height: 300,
      width: 300, 
      child: Image.network("https://cdn-icons-png.flaticon.com/512/118/118111.png", )
      
    );
  }
}