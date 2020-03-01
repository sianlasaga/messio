import 'package:flutter/material.dart';
import 'package:messio/screens/ConversationScreen.dart';
import 'package:rubber/rubber.dart';

class ConversationSlideScreen extends StatefulWidget {
  ConversationSlideScreen({Key key}) : super(key: key);

  @override
  _ConversationSlideScreenState createState() =>
      _ConversationSlideScreenState();
}

class _ConversationSlideScreenState extends State<ConversationSlideScreen>
    with SingleTickerProviderStateMixin {
  var controller;

  @override
  void initState() {
    controller = RubberAnimationController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        ConversationScreen(),
        ConversationScreen(),
        ConversationScreen()
      ],
    );
  }
}
