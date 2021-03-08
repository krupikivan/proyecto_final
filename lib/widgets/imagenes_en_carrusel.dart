import 'package:flutter/material.dart';

class CarruselImagenes extends StatelessWidget {
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
              CarruselImage(urlImagen: 'assets/imagenes/mikve.jpg'),
              CarruselImage(urlImagen: 'assets/imagenes/mikve_1.jpg'),
              CarruselImage(urlImagen: 'assets/imagenes/mikve_2.jpg'),
              CarruselImage(urlImagen: 'assets/imagenes/mikve_3.jpg'),
              CarruselImage(urlImagen: 'assets/imagenes/mikve_4.jpg'),
              CarruselImage(urlImagen: 'assets/imagenes/mikve.jpg'),
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
        child: CircleAvatar(backgroundImage: AssetImage(urlImagen), radius: 30),
      );
}
