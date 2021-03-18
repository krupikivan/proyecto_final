import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'servicios/servicio_causas.dart';

class AgregarCausa extends StatefulWidget {
  AgregarCausa({Key key}) : super(key: key);

  @override
  _AgregarCausaState createState() => _AgregarCausaState();
}

class _AgregarCausaState extends State<AgregarCausa> {
  final _formKey = GlobalKey<FormState>();
  String _titulo;
  String _subtitulo;
  String _descripcion;
  String _objetivo;
  int _contacto;
  bool _cargando = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _cargando
          ? Center(child: CircularProgressIndicator())
          : Container(
              padding: const EdgeInsets.all(30),
              child: Form(
                  key: _formKey,
                  child: ListView(children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(helperText: 'Ingrese titulo'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Ingrese un titulo';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        _titulo = value;
                      },
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(helperText: 'Ingrese subtitulo'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Ingrese un subtitulo';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        _subtitulo = value;
                      },
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(helperText: 'Ingrese descripcion'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Ingrese un descripcion';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        _descripcion = value;
                      },
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(helperText: 'Ingrese objetivo'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Ingrese un objetivo';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        _objetivo = value;
                      },
                    ),
                    TextFormField(
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                      ],
                      decoration:
                          InputDecoration(helperText: 'Ingrese contacto'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Ingrese un contacto';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        _contacto = int.parse(value);
                      },
                    ),
                  ])),
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          FocusScope.of(context).unfocus();
          if (_formKey.currentState.validate()) {
            setState(() {
              _cargando = true;
            });
            if (await agregarCausa(
                titulo: _titulo,
                descripcion: _descripcion,
                contacto: _contacto,
                objetivo: _objetivo,
                subtitulo: _subtitulo)) {
              setState(() {
                _cargando = false;
              });
              showDialog(
                  context: context,
                  child: AlertDialog(
                    content: Text("Causa agregada"),
                    actions: [
                      FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                            limpiar();
                          },
                          child: Text("Ok"))
                    ],
                  ));
            } else {
              setState(() {
                _cargando = false;
              });
              showDialog(
                  context: context,
                  child: AlertDialog(
                    content: Text("Error"),
                    actions: [
                      FlatButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("Ok"))
                    ],
                  ));
            }
          }
        },
        label: Text('Agregar'),
        icon: Icon(Icons.add),
      ),
    );
  }

  limpiar() {
    _formKey.currentState.reset();
  }
}
