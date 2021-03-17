import 'package:dio/dio.dart';
import 'package:proyecto_final/clases/causa.dart';

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
