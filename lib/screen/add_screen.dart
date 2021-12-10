import 'package:flutter/material.dart';
import 'package:wood_fed_oficial/models/project_model.dart';
import 'package:http/http.dart' as http;

class MapPage extends StatelessWidget {
  final project = new Project();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingresar Nuevo proyecto'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
          child: Column(
            children: [
              Text('DATOS'),
              SizedBox(
                height: 15.0,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Cliente',
                  prefixIcon: Icon(Icons.person),
                ),
                onChanged: (value) {
                  project.name = value;
                },
                maxLength: 20,
              ),
              SizedBox(height: 0.0),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'finca',
                  prefixIcon: Icon(Icons.car_rental),
                ),
                onChanged: (value) {
                  project.farm = value;
                },
                maxLength: 20,
              ),
              SizedBox(height: 0.0),
              TextField(
                onChanged: (value) {
                  project.owner = value;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                  labelText: 'propietario',
                ),
              ),
              SizedBox(height: 15.0),
              ElevatedButton(
                  onPressed: () async {
                    final data = await postInfo(project.toJson());
                    print(data);
                    if (data != null) {
                      print('enviado');
                    } else {
                      print('problemas');
                    }
                  },
                  child: Text('ENVIAR'))
            ],
          ),
        ),
      ),
    );
  }

  Future<Project?> postInfo(Map json) async {
    final url = Uri.parse('https://f6f6-190-61-46-2.ngrok.io/projects/');
    final response = await http.post(url, body: json);
    print(response.body);
    if (response.statusCode == 201) {
      return projectFromJson(response.body);
    } else {
      return null;
    }
  }
}
