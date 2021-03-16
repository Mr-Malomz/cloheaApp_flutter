import 'package:cloheaApp_flutter/src/utils/colors.dart';
import 'package:flutter/material.dart';

class OutlineBtn extends StatelessWidget {
  final String text;
  Function routeChange;
  OutlineBtn({@required this.text, this.routeChange});
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 36.0,
      minWidth: 136.0,
      child: OutlinedButton(
        onPressed: () {
          routeChange();
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(6.0),
              topLeft: Radius.circular(6.0),
              topRight: Radius.circular(6.0),
            ),
          ),
          side: BorderSide(width: 2, color: primary),
          minimumSize: Size(162.0, 36.0),
        ),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w700, color: primary),
        ),
      ),
    );
  }
}

class FillBtn extends StatelessWidget {
  final String text;
  Function routeChange;
  FillBtn({@required this.text, this.routeChange});
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          routeChange();
        },
        style: TextButton.styleFrom(
          backgroundColor: primary,
          minimumSize: Size(162.0, 36.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(6.0),
              topLeft: Radius.circular(6.0),
              topRight: Radius.circular(6.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w700, color: white),
        ));
  }
}

class LongFillBtn extends StatelessWidget {
  final String text;
  Function funcCall;
  LongFillBtn({@required this.text, this.funcCall});
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          funcCall();
        },
        style: TextButton.styleFrom(
          backgroundColor: primary,
          minimumSize: Size(MediaQuery.of(context).size.width, 36.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(6.0),
              topLeft: Radius.circular(6.0),
              topRight: Radius.circular(6.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w700, color: white),
        ));
  }
}

class ArrowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        alignment: Alignment.centerLeft,
        icon: Icon(
          Icons.arrow_back,
          color: black,
          size: 24.0,
        ),
        onPressed: () {
          Navigator.pop(context);
        });
  }
}
