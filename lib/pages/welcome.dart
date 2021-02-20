import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      left: 150,
      right: 50,
      child: Container(
        width: (MediaQuery.of(context).size.width) - 10,
        height: (MediaQuery.of(context).size.height) - 110,
        decoration: BoxDecoration(
          color: Color(0x000000),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 50,
              right: 50,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ), /*
            Container(
              child: FlareActor(
                'Empty.flr',
                animation: "empty",
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
