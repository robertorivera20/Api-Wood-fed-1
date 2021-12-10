// To parse this JSON data, do
//
//     final project = projectFromJson(jsonString);

import 'dart:convert';

List<Project> projectsFromJson(String str) =>
    List<Project>.from(json.decode(str).map((x) => Project.fromJson(x)));

Project projectFromJson(String str) => Project.fromJson(json.decode(str));

String projectToJson(List<Project> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Project {
  Project({
    this.name = '',
    this.farm = '',
    this.owner = '',
  });

  String name;
  String farm;
  String owner;

  factory Project.fromJson(Map<String, dynamic> json) => Project(
        name: json["name"],
        farm: json["farm"],
        owner: json["owner"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "farm": farm,
        "owner": owner,
      };
}
