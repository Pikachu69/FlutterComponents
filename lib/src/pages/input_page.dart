import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email  = '';
  String _fecha  = '';
  String _optSelected = 'Volar';

  List<String> _poderes = ['Volar', 'Rayos X', 'Super Aliento', 'Super Fuerza'];

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(color: Colors.black, height: 40.0,),
          _crearEmail(),
          SizedBox(height: 15.0,),
          _crearPassword(),
          Divider(color: Colors.black, height: 40.0,),
          _crearFecha(context),
          Divider(color: Colors.black, height: 40.0,),
          _crearDropdown(),
          Divider(color: Colors.black, height: 40.0,),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return Column(
      children: [
        Text('Estilos', style: TextStyle(fontSize: 20.0),),
        TextField(
          textCapitalization: TextCapitalization.words,
          decoration: InputDecoration(
            counter: Text('Letras 0'),
            hintText: 'Nombre de la persona',
            labelText: 'Nombre Completo',
            helperText: 'Nombre Completo',
            suffixIcon: Icon(Icons.visibility),
            icon: Icon(Icons.account_circle)
          ),
        ),
        SizedBox(height: 10.0),
        TextField(
          textCapitalization: TextCapitalization.words,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            counter: Text('Letras 0'),
            hintText: 'Nombre de la persona',
            labelText: 'Nombre Completo',
            helperText: 'Nombre Completo',
            suffixIcon: Icon(Icons.visibility),
            icon: Icon(Icons.account_circle)
          ),
        ),
        SizedBox(height: 10.0),
        TextField(
          textCapitalization: TextCapitalization.words,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.0)
            ),
            counter: Text('Letras ${_nombre.length}'),
            hintText: 'Nombre de la persona',
            labelText: 'Nombre Completo',
            helperText: 'Nombre Completo',
            suffixIcon: Icon(Icons.visibility),
            icon: Icon(Icons.account_circle)
          ),
          onChanged: (valor) {
            setState(() {
              _nombre = valor;
            });
          },
        ),
        SizedBox(height: 10.0),
      ],
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre: $_nombre'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email: $_email'),
          Text('Cumpleaños: $_fecha')
        ],
      ),
      trailing: Text('Poder: $_optSelected'),
    );
  }

  Widget _crearEmail() {
    return Column(
      children: [
        Text('Logueo', style: TextStyle(fontSize: 20.0),),
        SizedBox(height: 10.0,),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.0)
            ),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.account_circle)
          ),
          onChanged: (valor) => setState(() {
            _email = valor;
          }),
        ),
      ],
    );
  }

  Widget _crearPassword() {
    return Column(
      children: [
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.0)
            ),
          hintText: 'Contraseña',
          labelText: 'Contraseña',
          suffixIcon: Icon(Icons.visibility),
          icon: Icon(Icons.lock)
          ),
          onChanged: (valor) => setState(() {
            _email = valor;
          }),
        ),
      ],
    );
  }

  Widget _crearFecha(BuildContext context) {
    return Column(
      children: [
        Text('Fechas', style: TextStyle(fontSize: 20.0),),
        SizedBox(height: 10.0,),
        TextField(
          controller: _inputFieldDateController,
          enableInteractiveSelection: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.0)
            ),
          hintText: 'Fecha de Nacimiento',
          labelText: 'Fecha de Nacimiento',
          suffixIcon: Icon(Icons.date_range),
          icon: Icon(Icons.cake)
          ),
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
            _selectDate(context);
          },
        ),
      ],
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
      context: context, 
      initialDate: new DateTime.now(), 
      firstDate: new DateTime(1990), 
      lastDate: new DateTime.now(),
      locale: Locale('es', 'MX')
      );

      if(picked != null) {
        setState(() {
          _fecha = picked.toString();
          _inputFieldDateController.text = _fecha;
        });
      }
  }

  List<DropdownMenuItem<String>> getOptDropdown() {
    List<DropdownMenuItem<String>> lista = new List();

    _poderes.forEach((poder) { 
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
        )
      );
    });
    return lista;
  }

  Widget _crearDropdown() {
    return Row(
      children: [
        Icon(Icons.accessibility),
        SizedBox(width: 20.0,),
        Container(
          width: 250.0,
          child: DropdownButton(
            isExpanded: true,
            value: _optSelected,
            items: getOptDropdown(),
            onChanged: (opt) {
              setState(() {
                _optSelected = opt;
              });
            }
          ),
        ),
      ],
    );
  }

}