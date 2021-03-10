import 'package:flutter/material.dart';

class ItemDetalle extends StatelessWidget {
  const ItemDetalle({
    this.titulo,
    this.descripcion,
    Key key,
  }) : super(key: key);

  final String titulo;
  final String descripcion;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              descripcion,
              textAlign: TextAlign.justify,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.grey[600]),
            ),
          ],
        ),
      );
}
