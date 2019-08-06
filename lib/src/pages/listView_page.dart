import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  
  ScrollController _scrollController = new ScrollController();
  List <int> _listaNumero= new List();
  int _ultimoItem =0;
  bool _isLoading = false;
  @override
  void initState() {    
    super.initState();
    _agregar10();
    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        fetchData();
      }
    });
  }
  @override
  void dispose() {    
    super.dispose();
    _scrollController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Listas'),
      ),
      body:Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
        ],
      )
       
    );
  }
  Widget _crearLista(){
    return ListView.builder(
      controller: _scrollController,
      itemCount: _listaNumero.length,
      itemBuilder: (BuildContext context, int index){
        final imagen = _listaNumero[index];
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/300/300/?image=$imagen'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 600),
        );
      },
    );
  } 
  Widget _crearLoading(){
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 20.0,)
        ],
      );
    }else{
      return Container();
    }
  }
  void _agregar10(){
    for (var i = 1; i < 10; i++) {
      _ultimoItem++;
      _listaNumero.add(_ultimoItem);
    }
    setState(() {      
    });
  }
  Future <Null> fetchData() async{
    _isLoading= true;
    setState(() {});
    final duration = new Duration( seconds: 4);
    new Timer(duration, respuestaHTTP);
  }
  void respuestaHTTP(){
    _isLoading=false;
    // _scrollController.animateTo(
    //   _scrollController.position.pixels +300,
    //   curve: Curves.fastOutSlowIn,
    //   duration:  Duration(milliseconds: 250)
    // );
    _agregar10();
  }
}