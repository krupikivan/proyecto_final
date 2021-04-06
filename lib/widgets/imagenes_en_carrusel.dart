import 'package:flutter/material.dart';

class CarruselImagenes extends StatelessWidget {
  final List<String> imagenes;

  const CarruselImagenes({Key key, this.imagenes}) : super(key: key);
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: Container(
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(
                width: 16,
              ),
              for (int i = 0; i < imagenes.length; i++)
                CarruselImage(urlImagen: imagenes[i]),
              SizedBox(
                width: 16,
              ),
            ],
          ),
        ),
      );
}

class CarruselImage extends StatelessWidget {
  const CarruselImage({
    this.urlImagen,
    Key key,
  }) : super(key: key);

  final String urlImagen;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child:
            CircleAvatar(backgroundImage: NetworkImage(urlImagen), radius: 30),
      );
}
