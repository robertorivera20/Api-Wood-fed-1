import 'package:flutter/material.dart';
import 'package:wood_fed_oficial/screen/home_screen.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.red,
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'WOOD FED',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontSize: 60,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Bienvenido al aplicativo movil wood fed',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 55,
              ),
              TextField(
                  autofocus: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Usuario',
                    prefixIcon: Icon(Icons.person),
                    hoverColor: Colors.red,
                  )),
              SizedBox(
                height: 25,
              ),
              TextField(
                  decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Contraseña',
                prefixIcon: Icon(Icons.vpn_key_rounded),
              )),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    elevation: MaterialStateProperty.all(5.0),
                    fixedSize: MaterialStateProperty.all(Size.fromWidth(100)),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text('INGRESAR'))
            ]),
      ),
    );
  }
}
