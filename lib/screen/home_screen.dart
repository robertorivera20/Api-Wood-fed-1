import 'package:flutter/material.dart';
import 'package:wood_fed_oficial/models/project_model.dart';
import 'package:wood_fed_oficial/screen/add_screen.dart';
import 'package:http/http.dart' as http;
import 'package:wood_fed_oficial/screen/show_screen.dart';
//import 'package:wood_fed_oficial/screen/show_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de Proyectos Wood Fed'), //cabecera
        backgroundColor: Colors.red, //añadido dic 10 - tema no funciona
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: FutureBuilder(
        future: getInfo(), //future
        builder: (context, AsyncSnapshot<List<Project>> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final projects = snapshot.data;
            print(projects); //PRIN
            return ListView.builder(
              itemCount: projects?.length,
              itemBuilder: (BuildContext context, int index) {
                final project = projects![index];
                return Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.person,
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: Colors.redAccent,
                      ),
                      title: Text(project.name),
                      subtitle: Text(project.farm),
                      //tileColor: Colors.red[50],
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowPage(
                                      project: projects[index],
                                    )));
                      },
                    ),
                    Divider(),
                  ],
                );
              },
            );
          } else {
            return Center(child: CircularProgressIndicator()); //cargando
          }
        },
      ),

      //boton añadir
      floatingActionButton: FloatingActionButton(
        //al presionar te abre otro context
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MapPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<List<Project>> getInfo() async {
    final url = Uri.parse('https://eb10-190-61-46-2.ngrok.io/projects/');
    final response = await http.get(url);
    print(response);
    if (response.statusCode == 200) {
      return projectsFromJson(response.body);
    } else {
      return [];
    }
  }
}
