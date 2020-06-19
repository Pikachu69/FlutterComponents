import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () =>_mostrarAlert(context),
          child: Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          ),
        ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          title: Center(child: Text('Titulo')),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Este es el contenido de la alerta'),
              FlutterLogo(size: 100.0,)
            ],
          ),
          actions: [
            FlatButton(
              onPressed: () => Navigator.of(context).pop(), 
              child: Text('Cancelar')
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Aceptar')
            ),
          ],
        );
      }
    );
  }
}