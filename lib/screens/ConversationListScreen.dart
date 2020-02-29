import 'package:flutter/material.dart';
import 'ConversationScreen.dart';

class ConversationListScreen extends StatefulWidget {
  ConversationListScreen({Key key}) : super(key: key);

  @override
  _ConversationListScreenState createState() => _ConversationListScreenState();
}

class _ConversationListScreenState extends State<ConversationListScreen> {
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
