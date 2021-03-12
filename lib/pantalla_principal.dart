import 'package:flutter/material.dart';
import 'package:proyecto_final/causa_widget.dart';
import 'package:proyecto_final/clases/causa.dart';
import 'package:proyecto_final/servicios/servicio_causas.dart';

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
        child: FutureBuilder(
          future: obtenerCausas(),
          builder: (context, snapshot) => Container(),
        ),
        // ListView.builder(
        //   itemBuilder: (context, index) => CausaWidget(
        //     titulo: listadoCausas[index].titulo,
        //     descripcion: listadoCausas[index].descripcion,
        //     urlImagen: listadoCausas[index].urlImagen,
        //     causa: listadoCausas[index],
        //   ),
        //   itemCount: listadoCausas.length,
        // children: [
        // CausaWidget(
        //   descripcion: 'Necesitamos tu ayuda',
        //   titulo: 'Mikve',
        //   urlImagen: 'assets/imagenes/mikve.jpg',
        // ),
        // CausaWidget(
        //   titulo: 'Guemara',
        //   descripcion: 'Necesitamos tu ayuda',
        //   urlImagen: 'assets/imagenes/guemara.jpg',
        // ),
        // CausaWidget(
        //   titulo: 'Templo',
        //   urlImagen: 'assets/imagenes/templo.png',
        // ),
        // ],
      ),
    );
  }
}
