import 'package:flutter/material.dart';

import 'agregar_causa.dart';
import 'listado_causas.dart';

class PantallaPrincipal extends StatefulWidget {
  @override
  _PantallaPrincipalState createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int indexPage = 0;
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
          child: _listarPagina()),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ver Causas'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Agregar"),
        ],
        onTap: (index) => _cambiarPagina(index),
        currentIndex: indexPage,
      ),
    );
  }

  void _cambiarPagina(int index) {
    setState(() {
      indexPage = index;
    });
  }

  Widget _listarPagina() {
    if (indexPage == 0) {
      return ListadoCausas();
    } else {
      return AgregarCausa();
    }
  }
}
