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

  factory Causa.fromJson(Map<String, dynamic> json) {
    final titulo = json['titulo'];
    final subtitulo = json['subtitulo'];
    final descripcion = json['descripcion'];
    final imagen = json['imagen'];
    final objetivo = json['objetivo'];
    final contacto = json['contacto'];
    final respaldo = json['respaldo'];
    final imagenRespaldo = json['imagen_respaldo'];
    final List<String> imagenes = List<String>.from(json['imagenes']);

    return Causa(
      titulo: titulo,
      subtitulo: subtitulo,
      descripcion: descripcion,
      urlImagen: imagen,
      objetivo: objetivo,
      numeroTelefono: contacto,
      respaldo: respaldo,
      urlImagenRespaldo: imagenRespaldo,
      urlImagenes: imagenes,
    );
  }

  final String titulo;
  final String subtitulo;
  final String urlImagen;

  final String descripcion;
  final List<String> urlImagenes;
  final String objetivo;
  final String urlImagenRespaldo;
  final String respaldo;
  final int numeroTelefono;

  // List<String> getListado(List<dynamic> json) {
  //   List<String> imagenes =
  // }

}
