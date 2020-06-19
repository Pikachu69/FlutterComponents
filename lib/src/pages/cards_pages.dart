import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards')
      ),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: [
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo3(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo3(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo3(),
          SizedBox(height: 20.0,),
          _cardTipo1(),
          SizedBox(height: 20.0,),
          _cardTipo2(),
          SizedBox(height: 20.0,),
          _cardTipo3(),
          SizedBox(height: 20.0,),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(side: BorderSide(width: 1.0, color: Colors.grey), borderRadius: BorderRadius.circular(40.0)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text('Subtitulo de la tarjeta'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                onPressed: () {},
                child: Text('Cancelar')
              ),
              FlatButton(
                onPressed: () {},
                child: Text('Aceptar')
              )
            ],
          )
        ]
      )
    );
  }

  Widget _cardTipo2() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
      elevation: 10.0,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage('https://c.wallhere.com/photos/4a/d6/Legends_of_Runeterra_Ashe_League_of_Legends-1773681.jpg!d'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          //Image(image: NetworkImage('https://c.wallhere.com/photos/4a/d6/Legends_of_Runeterra_Ashe_League_of_Legends-1773681.jpg!d')),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Descripcion de la imagen')
          )
        ],
      ),
    );
  }

  _cardTipo3() {
    final card = Container(
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage('https://c.wallhere.com/photos/4a/d6/Legends_of_Runeterra_Ashe_League_of_Legends-1773681.jpg!d'),
            placeholder: AssetImage('assets/loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Descripcion de la imagen')
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(0.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      )
    );
  }
}