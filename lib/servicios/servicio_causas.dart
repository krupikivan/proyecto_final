import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:proyecto_final/clases/causa.dart';

// Este servicio Obtiene causas
Future<List<Causa>> obtenerCausas() async {
  try {
    Response respuesta =
        await Dio().get("https://gmaj-service.herokuapp.com/api/get_causas");

    final json = respuesta.data['causas'];

    var listadoDeCausas =
        json.map((causaJson) => Causa.fromJson(causaJson)).toList();

    return List<Causa>.from(listadoDeCausas);
  } catch (e) {
    return [];
  }
}

// Este servicio Elimina causas
Future eliminarCausa({int id}) async {
  try {
    var body = {
      "id": id,
    };
    Response respuesta = await Dio().post(
        "https://gmaj-service.herokuapp.com/api/delete_causa",
        data: jsonEncode(body));
    if (respuesta.statusCode == 200) {
      obtenerCausas();
    }
  } catch (e) {
    return false;
  }
}

// Este servicio agrega causas
Future agregarCausa(
    {String titulo,
    String subtitulo,
    String descripcion,
    String objetivo,
    int contacto}) async {
  try {
    var body = {
      "titulo": "$titulo",
      "subtitulo": "$subtitulo",
      "descripcion": "$descripcion",
      "objetivo": "$objetivo",
      "contacto": contacto
    };

    Response respuesta = await Dio().post(
        "https://gmaj-service.herokuapp.com/api/add_causa",
        data: jsonEncode(body));

    if (respuesta.statusCode == 200) {
      if (respuesta.data["success"]) {
        return true;
      } else {
        return false;
      }
    } else {
      throw "Error desconocido";
    }
  } catch (e) {
    return false;
  }
}
