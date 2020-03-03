import 'package:flutter/material.dart';
import 'package:messio/screens/ConversationScreen.dart';
import 'package:messio/widgets/InputWidget.dart';
import 'package:rubber/rubber.dart';
import 'package:messio/widgets/ConversationBottomSheet.dart';

class ConversationSlideScreen extends StatefulWidget {
  ConversationSlideScreen({Key key}) : super(key: key);

  @override
  _ConversationSlideScreenState createState() =>
      _ConversationSlideScreenState();
}

class _ConversationSlideScreenState extends State<ConversationSlideScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var controller;

  @override
  void initState() {
    controller = RubberAnimationController(vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body: Column(
          children: <Widget>[
            Expanded(
              child: PageView(
                children: <Widget>[
                  ConversationScreen(),
                  ConversationScreen(),
                  ConversationScreen()
                ],
              ),
            ),
            Container(
              child: GestureDetector(
                child: InputWidget(),
                onPanUpdate: (details) {
                  if (details.delta.dy < 0) {
                    _scaffoldKey.currentState.showBottomSheet(
                        (context) => ConversationBottomSheet());
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
