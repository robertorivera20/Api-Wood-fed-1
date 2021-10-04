import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  String _name;
  String _farm;
  String _owner;
  String _save;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('formulario'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
          children: <Widget>[
            _nameInput(),
            Divider(),
            _farmInput(),
            Divider(),
            _ownerInput(),
            _obtenerCoordenadas(),
            Divider(),
            _mostrarMapa(),
            Divider(
              height: 80.0,
              color: Colors.transparent,
            ),
            _saveContend(),
          ],
        ));
  }

  _nameInput() {
    return Container(
        height: 50.0,
        child: TextField(
          //autofocus: true,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              //counter: Text('${_name.length}'),
              // hintText: 'nombre del proyecto',
              labelText: 'Cliente ',
              helperText: 'nombre del cliente',
              suffixIcon: Icon(Icons.keyboard),
              icon: Icon(Icons.account_circle)),

          onChanged: (value) {
            setState(() {
              _name = value;
            });
            //print(_name);
          },
        ));
  }

  _farmInput() {
    return Container(
        height: 50.0,
        child: TextField(
          autofocus: false,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            //counter: Text('${_name.length}'),
            //hintText: 'nombre de la finca',
            labelText: 'Finca',
            helperText: 'nombre de la finca',
            //suffixIcon: Icon(Icons.keyboard),
            icon: Icon(Icons.terrain_rounded),
          ),
          onChanged: (value2) {
            setState(() {
              _farm = value2;
            });
          },
        ));
  }

  _ownerInput() {
    return Container(
        height: 50.0,
        child: TextField(
          autofocus: false,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            //counter: Text('${_name.length}'),
            //hintText: 'nombre de la finca',
            labelText: 'propietario',
            helperText: 'nombre del propietario',
            //suffixIcon: Icon(Icons.keyboard),
            icon: Icon(
              Icons.person_pin_rounded,
            ),
          ),
          onChanged: (value3) {
            setState(() {
              _owner = value3;
            });
          },
        ));
  }

  _obtenerCoordenadas() {
    return RaisedButton(
      disabledColor: Colors.amber,
      child: Text("obtener coordenadas"),
      splashColor: Colors.amber,
      color: Colors.blueAccent,
      onPressed: () {
        print("Obtener coordenadas");
      },
    );
  }

  _mostrarMapa() {
    return Container(
      child: Text('lista de coordenadas'),
      height: 220.0,
      color: Colors.blue,
    );
    //mostrar mapa
  }

  _saveContend() {
    return RaisedButton(
      disabledColor: Colors.amber,
      child: Text("Guardar"),
      splashColor: Colors.amber,
      color: Colors.blueAccent,
      onPressed: () {
        print("Obtener coordenadas");
      },
    );
  }
}
