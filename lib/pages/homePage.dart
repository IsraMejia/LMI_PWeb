import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lmi_web/pages/quienes_somos.dart';
import 'package:lmi_web/widgets/barrainicial.dart';
import 'package:lmi_web/widgets/cards.dart';
import 'package:lmi_web/widgets/carousel.dart';
import 'package:lmi_web/widgets/header.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List<bool> selected = [true, false, false, false, false, false];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          BarraInicio(),
          Header(),
          Positioned(top: 120, left: 250, child: Cards()),
        ],
      ),
    );
  }
}
