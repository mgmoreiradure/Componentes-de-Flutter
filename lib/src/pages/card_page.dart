import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
            _cardTipo1(),
            SizedBox(height: 30.0,),
            _cardTipo2(),
            SizedBox(height: 30.0,),
          ],
        ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album,color: Colors.blue,),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Este es un texto largo para poder ver como ocupa mas de una line a para poder ver si esta todo correcto'),

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: (){},
              ),
            ],),
        ],),
    );
  }

  Widget _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: Column(  
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://i.ytimg.com/vi/sOfdDibgjbk/maxresdefault.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://i.ytimg.com/vi/sOfdDibgjbk/maxresdefault.jpg'),
          // ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo ni idea que poner'),
          ),
        ],
      ),
    );
  }
}