import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

List<bool> selected = [true, false, false, false, false, false];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<IconData> icon = [
      Icons.home,
      Icons.group,
      Icons.create,
      Icons.engineering,
      Icons.fact_check,
      Icons.contact_mail_rounded
    ];
    void select(int n) {
      for (int i = 0; i < 6; i++) {
        if (i == n) {
          selected[i] = true;
        } else {
          selected[i] = false;
        }
      }
    }

    var screenSize =
        MediaQuery.of(context).size; //obtener tamaño de la pantalla
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              child: Row(
                children: [
                  Container(
                      height: 80, width: 80, child: Image.asset('Imagen1.png')),
                  Container(
                    width: 15,
                  ),
                  Text(
                    'Laboratoria de Multimedia e Internet',
                    style: GoogleFonts.padauk(
                        fontSize: 20, color: Color(0xff3196e2)),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 100,
            child: Container(
              margin: EdgeInsets.all(0),
              height: (MediaQuery.of(context).size.height) - 50,
              width: 101.0,
              decoration: BoxDecoration(
                color: Color(0xFF8dc6ef),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 60.0,
                    child: Column(children: <Widget>[
                      Column(
                        children: icon
                            .map(
                              (e) => NavBarItem(
                                icon: e,
                                selected: selected[icon.indexOf(e)],
                                onTap: () {
                                  setState(() {
                                    select(icon.indexOf(e));
                                  });
                                },
                              ),
                            )
                            .toList(),
                      )
                    ]),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NavBarItem extends StatefulWidget {
  final IconData icon;
  final Function onTap;
  final bool selected;

  NavBarItem({this.icon, this.onTap, this.selected});

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> with TickerProviderStateMixin {
  AnimationController _controller1;
  AnimationController _controller2;

  Animation<double> _anim1;
  Animation<double> _anim2;
  Animation<double> _anim3;
  Animation<Color> _color;

  bool hovered = false;

  @override
  void initState() {
    super.initState();

    _controller1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    _controller2 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 275),
    );

    _anim1 = Tween(begin: 101.0, end: 75.0).animate(_controller1);
    _anim2 = Tween(begin: 101.0, end: 25.0).animate(_controller2);
    _anim3 = Tween(begin: 101.0, end: 50.0).animate(_controller2);
    _color = ColorTween(end: Color(0xff332a7c), begin: Colors.white)
        .animate(_controller2);

    _controller1.addListener(() {
      setState(() {});
    });
    _controller2.addListener(() {
      setState(() {});
    });
  }

  @override
  void didUpdateWidget(NavBarItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (!widget.selected) {
      _controller1.reverse();
      _controller2.reverse();
    } else {
      _controller1.forward();
      _controller2.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap();
      },
      child: MouseRegion(
        onEnter: (value) {
          setState(() {
            hovered = true;
          });
        },
        onExit: (value) {
          setState(() {
            hovered = false;
          });
        },
        child: Container(
          width: 101.0,
          color:
              hovered && !widget.selected ? Colors.white12 : Colors.transparent,
          child: Stack(
            children: [
              Container(
                child: CustomPaint(
                  painter: CurvePainter(
                      animValue1: _anim3.value,
                      animValue2: _anim2.value,
                      animValue3: _anim1.value),
                ),
              ),
              Container(
                height: 80.0,
                width: 101.0,
                child: Center(
                  child: Icon(widget.icon, color: _color.value, size: 22.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  final double animValue1;
  final double animValue2;
  final double animValue3;

  CurvePainter({
    this.animValue1,
    this.animValue2,
    this.animValue3,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.moveTo(101, 0);
    path.quadraticBezierTo(101, 20, animValue3, 20);
    path.lineTo(animValue1, 20);
    path.quadraticBezierTo(animValue2, 20, animValue2, 40);
    path.lineTo(101, 40);
    path.close();

    path.moveTo(101, 80);
    path.quadraticBezierTo(101, 60, animValue3, 60);
    path.lineTo(animValue1, 60);
    path.quadraticBezierTo(animValue2, 60, animValue2, 40);
    path.lineTo(101, 40);
    path.close();

    paint.color = Colors.white;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
