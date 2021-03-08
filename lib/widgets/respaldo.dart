import 'package:flutter/material.dart';

class Respaldo extends StatelessWidget {
  const Respaldo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/imagenes/baal_shem_tov.jpg'),
            radius: 30,
          ),
          SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Respaldo',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Esta causa esta respaldada por el gran rab de la comunidad',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(color: Colors.grey[600]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
