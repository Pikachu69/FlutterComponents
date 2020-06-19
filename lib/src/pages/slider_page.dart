import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 200.0;
  bool _blockCheck = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen(),
            ),
          ],
        )
      ),
    );
  }

  _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      divisions: 400,
      min: 1.0,
      max: 400.0,
      value: _valorSlider, 
      onChanged: (_blockCheck)? null:(valor) {
        setState(() {
          _valorSlider = valor;
        });
      }
    );
  }

  _crearImagen() {
    return Image(
      image: NetworkImage('https://anthoncode.com/wp-content/uploads/2020/01/logo-batman-nolan.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  _crearCheckBox() {
    // return Checkbox(
    //   value: _blockCheck, 
    //   onChanged: (valor) {
    //     setState(() {
    //       _blockCheck = valor;
    //     });
    //   },
    // );
    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _blockCheck, 
      onChanged: (valor) {
        setState(() {
          _blockCheck = valor;
        });
      },
    );
  }

  _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _blockCheck, 
      onChanged: (valor) {
        setState(() {
          _blockCheck = valor;
        });
      },
    );
  }
}