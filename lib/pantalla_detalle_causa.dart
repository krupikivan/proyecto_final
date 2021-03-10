import 'package:flutter/material.dart';
import 'package:proyecto_final/widgets/boton_de_accion.dart';
import 'package:proyecto_final/widgets/imagenes_en_carrusel.dart';
import 'package:proyecto_final/widgets/item_detalle.dart';
import 'package:proyecto_final/widgets/respaldo.dart';

class PantallaDetalleCausa extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Construimos una mikve'),
        ),
        body: Stack(
          children: [
            Descripcion(),
            BotonDeAccion(),
          ],
        ),
      );
}

class Descripcion extends StatelessWidget {
  const Descripcion({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset(
          'assets/imagenes/mikve.jpg',
          height: 210,
          fit: BoxFit.cover,
        ),
        ItemDetalle(
          titulo: 'Descripcion',
          descripcion:
              'Con la ayuda de Bore Olam estamos juntando materiales para la construcción de la primer mikve en la zona norte, y para eso necesitamos tu ayuda. El proyecto ya tiene sus planos y esta apoyado por el gran rabino de la comunidad.',
        ),
        CarruselImagenes(),
        ItemDetalle(
          titulo: 'Objetivo',
          descripcion:
              'Necesitamos conseguir U\$D 50.000 en los próximos 100 días para solventar los gastos de la construcción. para esto un donante duplicara el monto de las donaciones que se realicen. ',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(),
        ),
        Respaldo(),
        SizedBox(
          height: MediaQuery.of(context).padding.bottom + 30,
        )
      ],
    );
  }
}
