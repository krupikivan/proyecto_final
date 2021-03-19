import 'package:flutter/material.dart';
import 'package:proyecto_final/clases/causa.dart';
import 'package:proyecto_final/widgets/boton_de_accion.dart';
import 'package:proyecto_final/widgets/imagenes_en_carrusel.dart';
import 'package:proyecto_final/widgets/item_detalle.dart';
import 'package:proyecto_final/widgets/respaldo.dart';

class PantallaDetalleCausa extends StatelessWidget {
  const PantallaDetalleCausa({Key key, this.causa}) : super(key: key);

  final Causa causa;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(causa.titulo),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Descripcion(
              causa: causa,
            ),
            BotonDeAccion(),
          ],
        ),
      );
}

class Descripcion extends StatelessWidget {
  const Descripcion({
    Key key,
    this.causa,
  }) : super(key: key);

  final Causa causa;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network(
          causa.urlImagen,
          height: 210,
          fit: BoxFit.cover,
        ),
        ItemDetalle(
          titulo: 'Descripcion',
          descripcion: causa.descripcion,
        ),
        CarruselImagenes(imagenes: causa.urlImagenes),
        ItemDetalle(
          titulo: 'Objetivo',
          descripcion: causa.objetivo,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(),
        ),
        SizedBox(
          height: MediaQuery.of(context).padding.bottom + 30,
        ),
      ],
    );
  }
}
