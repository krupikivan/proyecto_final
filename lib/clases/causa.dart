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
    final imagenes = json['imagenes'];

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
}

final json = {
  "id": 1,
  "titulo": "Mikve en cordoba",
  "subtitulo": "Primera mikve",
  "descripcion": "Colabora con la mikve de cordoba",
  "imagen": "https://www.radiojai.com/wp-content/uploads/2020/03/Mikve-1.jpg",
  "objetivo": "Nuestro objetivo",
  "contacto": 1122334455,
  "respaldo": "Respaldo de no se que",
  "imagen_respaldo": "https://media.torah-box.com/beau-mikve-3178.jpg",
  "imagenes": [
    "https://www.jpost.com/HttpHandlers/ShowImage.ashx?id=280162&w=898&h=628",
    "https://media.torah-box.com/beau-mikve-3178.jpg"
  ]
};
