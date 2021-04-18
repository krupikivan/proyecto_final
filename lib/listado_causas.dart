import 'package:flutter/material.dart';
import 'package:proyecto_final/servicios/servicio_causas.dart';

import 'causa_widget.dart';
import 'clases/causa.dart';

class ListadoCausas extends StatelessWidget {
  const ListadoCausas({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Causa>>(
        future: obtenerCausas(),
        builder: (context, snapshot) => snapshot.data != null
            ? ListView.builder(
                itemBuilder: (context, index) => Dismissible(
                  key: Key(index.toString()),
                  onDismissed: (direction) async {
                    await eliminarCausa(id: snapshot.data[index].id);
                  },
                  child: CausaWidget(
                    titulo: snapshot.data[index].titulo,
                    descripcion: snapshot.data[index].descripcion,
                    urlImagen: snapshot.data[index].urlImagen,
                    causa: snapshot.data[index],
                    subtitulo: snapshot.data[index].subtitulo,

                  ),
                ),
                itemCount: snapshot.data.length,
              )
            : Center(child: CircularProgressIndicator()));
  }
}
