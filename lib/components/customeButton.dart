import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    this.color,
    this.text,
  }) : super(key: key);
  final String color, text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      height: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Colors.green, HexColor('#55d66b')],
        ),
      ),
      child: RawMaterialButton(
          // splashColor: Colors.black12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () async {
            
          },
          child: Container(
            alignment: Alignment.center,
            child: Wrap(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(55, 2, 40, 2),
                child: Text("Sign Up",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600)),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 21,
                ),
              )
            ]),
          )),
    );
  }
}
