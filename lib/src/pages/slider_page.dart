import 'package:flutter/material.dart';
class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlider=100.0;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    var crearImagen = _crearImagen();
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen(),              
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',      
      min: 10.0,
      max: 400.0,
      value: _valueSlider,
      onChanged: (_bloquearCheck)? null : (valor){
        setState(() {          
          _valueSlider= valor;
        });
      },
    );
  }

  Widget _crearCheckBox(){
    return CheckboxListTile(
      value: _bloquearCheck,
      title: Text('Bloquear slider'),
      onChanged: (valor){
        setState(() {          
          _bloquearCheck = valor;
        });
      },
      
    );
  }
  Widget _crearSwitch(){
    return SwitchListTile(
      value: _bloquearCheck,
      title: Text('Bloquear slider'),
      onChanged: (valor){
        setState(() {          
          _bloquearCheck = valor;
        });
      },
      
    );
  }
  Widget _crearImagen() {
    return FadeInImage(
        image: NetworkImage('https://miro.medium.com/max/500/1*D5afxg0H9xyxfqRq_bfTgQ.png'),
        width: _valueSlider,
        placeholder: AssetImage('assets/jar-loading.gif'),
        fadeInDuration: Duration(milliseconds: 200),
        fit: BoxFit.contain,
    );
  }
}