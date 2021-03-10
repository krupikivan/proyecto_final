import 'dart:math';

class Causa {
  const Causa({
    this.urlImagenes,
    this.objetivo,
    this.urlImagenRespaldo,
    this.respaldo,
    this.numeroTelefono,
    this.titulo,
    this.subtitulo,
    this.urlImagen,
    this.descripcion,
  });

  final String titulo;
  final String subtitulo;
  final String urlImagen;

  final String descripcion;
  final List<String> urlImagenes;
  final String objetivo;
  final String urlImagenRespaldo;
  final String respaldo;
  final int numeroTelefono;
}

const List<Causa> listadoCausas = [
  Causa(
    titulo: 'Mikve',
    subtitulo: 'Necesitamos tu ayuda',
    urlImagen: 'assets/imagenes/mikve.jpg',
    descripcion: 'Vamos que tenemos que juntar mucha plata',
    objetivo: 'Recaudar 1000 dolares',
    respaldo: 'Respaldado por grandes rabinos',
    urlImagenRespaldo: 'assets/imagenes/baal_shem_tov.jpg',
    numeroTelefono: 123123123,
    urlImagenes: [
      'assets/imagenes/mikve.jpg',
      'assets/imagenes/mikve_1.jpg',
      'assets/imagenes/mikve_2.jpg',
      'assets/imagenes/mikve_3.jpg',
      'assets/imagenes/mikve_4.jpg',
      'assets/imagenes/mikve.jpg',
    ],
  ),
  Causa(
    titulo: 'Guemara',
    subtitulo: 'Necesitamos tu ayuda',
    urlImagen: 'assets/imagenes/guemara.jpg',
    descripcion: 'Vamos que tenemos que juntar mucha plata',
    objetivo: 'Recaudar 1000 dolares',
    respaldo: 'Respaldado por grandes rabinos',
    urlImagenRespaldo: 'assets/imagenes/baal_shem_tov.jpg',
    numeroTelefono: 123123123,
    urlImagenes: [
      'assets/imagenes/mikve.jpg',
      'assets/imagenes/mikve_1.jpg',
      'assets/imagenes/mikve_2.jpg',
      'assets/imagenes/mikve_3.jpg',
      'assets/imagenes/mikve_4.jpg',
      'assets/imagenes/mikve.jpg',
    ],
  ),
];
