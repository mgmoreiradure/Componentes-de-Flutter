import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones=['uno','dos','tres','cuatro','cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
        ),
        body: ListView(
          children: _crearItems(),
        ),
      );
  }
  List<Widget> _crearItems(){
    return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('cualquier cosa como subtitulo'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();
        
  }
}