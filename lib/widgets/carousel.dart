import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) => Column(children: <Widget>[
        Container(
          width: 600,
          height: 400,
          color: Colors.black,
          child: CarouselSlider(
            items: <Widget>[Carousel1()],
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              /*scrollDirection: Axis.vertical,*/
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 2.0,
              initialPage: 2,
            ),
          ),
        ),
        /*RaisedButton(
          onPressed: () => buttonCarouselController.nextPage(
              duration: Duration(milliseconds: 300), curve: Curves.linear),
          child: Text('→'),
        )*/
      ]);
}

Widget Carousel1() {
  return Container(
      child: Stack(
    children: [
      Container(
        width: 600,
        height: 400,
        child: Image.asset(
          "assets\Fondo_celulares.JPG",
        ),
      ),
    ],
  ));
}

Widget Carousel2() {
  return Container(
    child: Row(
      children: [
        Container(
          height: 200,
          width: 150,
        ),
        Column(
          children: <Widget>[
            Container(
              height: 100,
              width: 50,
            ),
            Text("¿QUÉ OFRECEMOS?", style: GoogleFonts.anton(fontSize: 30)),
            Text("Tecnología Multimedia",
                style: GoogleFonts.abel(fontSize: 25)),
            Text(
              "\n*Cursos\n\n    *Servicio Social\n\n       *Asesorías\n\n            *Proyectos",
              style: GoogleFonts.abel(fontSize: 20),
            ),
            Container(
              height: 10,
            )
          ],
        ),
      ],
    ),
    margin: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      image: DecorationImage(
        image: AssetImage(
          "assets\Fondo_computadora.PNG",
        ),
        fit: BoxFit.cover,
      ),
    ),
  );
}
