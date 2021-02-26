import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
            width: 400,
            height: 300,
            padding: new EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Color(0xff53d2dc),
              elevation: 10,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  //imagen
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image:
                            DecorationImage(image: AssetImage('Service1.png'))),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Misión',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Formación de alumnos en las áreas de análisis, diseño y desarrollo de proyectos sobre Multimedia e Internet en apoyo a la comunidad universitaria y a la sociedad.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ),
            )),
        Container(
            width: 400,
            height: 300,
            padding: new EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Color(0xffff826c),
              elevation: 10,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  //imagen
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image:
                            DecorationImage(image: AssetImage('Service2.png'))),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Visión',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      ' Apoyamos a la comunidad universitaria a través de la participación de proyectos de desarrollo de software, impartición de cursos, préstamo de equipo',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ),
            )),
        Container(
            width: 400,
            height: 300,
            padding: new EdgeInsets.all(10.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Color(0xffffc05f),
              elevation: 10,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  //imagen
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image:
                            DecorationImage(image: AssetImage('Service3.png'))),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Nosotros ',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Somos estudiantes de la Facultad de Ingeniería de la UNAM.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
