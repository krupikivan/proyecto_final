import 'package:flutter/material.dart';
import 'package:proyecto_final/causa.dart';

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Curso Gmaj Center',
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            Causa(
              descripcion: 'Necesitamos tu ayuda',
              titulo: 'Mikve',
              urlImagen: 'assets/imagenes/mikve.jpg',
            ),
            Causa(
              titulo: 'Guemara',
              descripcion: 'Necesitamos tu ayuda',
              urlImagen: 'assets/imagenes/guemara.jpg',
            ),
            Causa(
              titulo: 'Templo',
              urlImagen: 'assets/imagenes/templo.png',
            ),
          ],
        ),
      ),
    );
  }
}
