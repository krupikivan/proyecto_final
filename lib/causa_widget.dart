import 'package:flutter/material.dart';
import 'package:proyecto_final/clases/causa.dart';
import 'package:proyecto_final/pantalla_detalle_causa.dart';
import 'package:proyecto_final/pantalla_principal.dart';

class CausaWidget extends StatelessWidget {
  CausaWidget({this.titulo, this.descripcion = '', this.urlImagen, this.causa});

  final String titulo;
  final String descripcion;
  final String urlImagen;
  final Causa causa;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PantallaDetalleCausa(
            causa: causa,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            titulo,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            descripcion,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          Image.network(
            urlImagen,
            height: 194,
            fit: BoxFit.fitWidth,
          ),
          Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
