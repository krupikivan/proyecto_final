import 'package:flutter/material.dart';

class BotonDeAccion extends StatelessWidget {
  const BotonDeAccion({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            width: double.infinity,
            child: RaisedButton(
              onPressed: () => null,
              child: Text('CONTACTAR'),
              color: Colors.blue[900],
              textColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
