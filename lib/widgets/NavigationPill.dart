import 'package:flutter/material.dart';
import 'package:messio/config/Palette.dart';

class NavigationPill extends StatelessWidget {
  const NavigationPill({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Center(
              child: Wrap(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 5,
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        color: Palette.accentColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
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
