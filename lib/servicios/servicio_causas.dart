import 'package:dio/dio.dart';
import 'package:proyecto_final/clases/causa.dart';

Future<List<Causa>> obtenerCausas() async {
  try {
    Response respuesta =
        await Dio().get("https://gmaj-service.herokuapp.com/api/causa?id=11");

    final Map<String, dynamic> json = respuesta.data;
  } catch (e) {
    print(e);
  }
}
