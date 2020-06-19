import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres','Cuatro','Cinco','Seis','Siete','Ocho','Nueve','Diez','Once','Doce'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes temp')
      ),
      body: ListView(
        children: _crearItemsCorta()
      ),
    );
  }
        
  // List<Widget> _crearItems() {
  //   List<Widget> lista = new List<Widget>();

  //   for (String opt in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );
  //     lista..add(tempWidget)
  //          ..add(Divider());
  //   }

  //   return lista;
  // }

  List<Widget> _crearItemsCorta(){
    var widgets = opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Items de opciones'),
            leading: Icon(Icons.person),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
    return widgets;
  }
}