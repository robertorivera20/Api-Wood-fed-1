import 'package:flutter/material.dart';
import 'package:wood_fed_oficial/models/project_model.dart';

class ShowPage extends StatelessWidget {
  const ShowPage({Key? key, required this.project}) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comentario'),
      ),
      body: Column(
        children: [Text(project.name), Text(project.farm), Text(project.owner)],
      ),
    );
  }
}
