import 'package:flutter/material.dart';
import 'package:messio/config/Palette.dart';
import 'package:messio/widgets/ChatAppBar.dart';
import 'package:messio/widgets/ChatListWidget.dart';
import 'package:messio/widgets/ConversationBottomSheet.dart';
import 'package:messio/widgets/InputWidget.dart';

class ConversationScreen extends StatefulWidget {
  ConversationScreen({Key key}) : super(key: key);

  @override
  _ConversationScreenState createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
          appBar: ChatAppBar(),
          body: Container(
            color: Palette.chatBackgroundColor,
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    ChatListWidget(),
                    GestureDetector(
                      child: InputWidget(),
                      onPanUpdate: (details) {
                        if (details.delta.dy < 0) {
                          _scaffoldKey.currentState.showBottomSheet(
                              (context) => ConversationBottomSheet());
                        }
                      },
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
