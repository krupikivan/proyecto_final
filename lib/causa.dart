import 'package:flutter/material.dart';

class Causa extends StatelessWidget {
  Causa({this.titulo, this.descripcion = '', this.urlImagen});

  String titulo;
  String descripcion;
  String urlImagen;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Image.asset(
          urlImagen,
          height: 194,
          fit: BoxFit.fitWidth,
        ),
        Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
