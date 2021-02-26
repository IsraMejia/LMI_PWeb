import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 100,
      child: Row(
        children: [
          Container(height: 100, width: 100, child: Image.asset('Imagen1.png')),
          Container(
            width: 15,
          ),
          Text(
            'Laboratoria de Multimedia e Internet',
            style: GoogleFonts.padauk(fontSize: 25, color: Color(0xff3196e2)),
          )
        ],
      ),
    );
  }
}
