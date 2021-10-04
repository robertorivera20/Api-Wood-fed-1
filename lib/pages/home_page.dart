import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wood_fed_oficial/pages/directions_page.dart';
import 'package:wood_fed_oficial/pages/map_page.dart';
import 'package:wood_fed_oficial/pages/maps_page.dart';
import 'package:wood_fed_oficial/providers/ui_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial de Proyectos Wood Fed'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Text('finca de roberto'),
              subtitle: Text('clic para ver proyecto'),
              leading: Icon(Icons.gps_fixed_rounded),
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
            ),
            Divider(),
            ListTile(
              title: Text('finca de roberto'),
              subtitle: Text('clic para ver proyecto'),
              leading: Icon(Icons.gps_fixed_rounded),
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
            ),
          ],
        ),
      ),

      //boton añadir
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MapPage()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
