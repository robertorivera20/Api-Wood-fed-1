import 'package:flutter/material.dart';
import 'package:wood_fed_oficial/models/project_model.dart';

class ShowPage extends StatelessWidget {
  const ShowPage({Key? key, required this.project}) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información del proyecto'),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                height: 220,
                width: double.maxFinite,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Stack(
                          children: <Widget>[
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        cardIcon(),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        cardTitle(),
                                        Spacer(),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[cardName()],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                height: 220,
                width: double.maxFinite,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Stack(
                          children: <Widget>[
                            Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 5),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        cardIcon2(),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        cardTitle2(),
                                        Spacer(),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[cardName2()],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
                height: 220,
                width: double.maxFinite,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(7),
                    child: Stack(children: <Widget>[
                      Align(
                        alignment: Alignment.centerRight,
                        child: Stack(
                          children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                  top: 5,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        cardIcon3(),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        cardTitle3(),
                                        Spacer(),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[cardName3()],
                                    )
                                  ],
                                ))
                          ],
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget cardIcon() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.person,
            color: Colors.redAccent,
            size: 40,
          )),
    );
  }

  Widget cardTitle() {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: 'Cliente:',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          children: <TextSpan>[
            TextSpan(
                text: '\nWoodFED',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget cardName() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 35.0),
        child: Row(
          children: <Widget>[
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: project.name.toUpperCase(), //objeto
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardIcon2() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.filter_hdr_rounded,
            color: Colors.redAccent,
            size: 40,
          )),
    );
  }

  Widget cardTitle2() {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: 'Finca:',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          children: <TextSpan>[
            TextSpan(
                text: '\nWoodFED',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget cardName2() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 35.0),
        child: Row(
          children: <Widget>[
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: project.farm.toUpperCase(), //objeto
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardIcon3() {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Icon(
            Icons.cottage_rounded,
            color: Colors.redAccent,
            size: 40,
          )),
    );
  }

  Widget cardTitle3() {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: 'Propietario:',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          children: <TextSpan>[
            TextSpan(
                text: '\nWoodFED',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  Widget cardName3() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 35.0),
        child: Row(
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: project.owner.toUpperCase(), //objeto
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    //body: Column(
    //  children: [Text(project.name), Text(project.farm), Text(project.owner)],
    //),
  }
}
