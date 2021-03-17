import 'package:flutter/material.dart';
import 'package:proyecto_final/causa_widget.dart';
import 'package:proyecto_final/clases/causa.dart';
import 'package:proyecto_final/servicios/servicio_causas.dart';

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Curso Gmaj Center',
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: FutureBuilder<List<Causa>>(
            future: obtenerCausas(),
            builder: (context, snapshot) => snapshot.data != null
                ? ListView.builder(
                    itemBuilder: (context, index) => CausaWidget(
                      titulo: snapshot.data[index].titulo,
                      descripcion: snapshot.data[index].descripcion,
                      urlImagen: snapshot.data[index].urlImagen,
                      causa: snapshot.data[index],
                    ),
                    itemCount: snapshot.data.length,
                  )
                : Container()),
      ),
    );
  }
}
