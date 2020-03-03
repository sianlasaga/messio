import 'package:flutter/material.dart';
import 'package:messio/config/Palette.dart';
import 'package:messio/config/Styles.dart';
import 'package:messio/widgets/ChatRowWidget.dart';
import 'package:messio/widgets/NavigationPill.dart';

class ConversationBottomSheet extends StatefulWidget {
  ConversationBottomSheet({Key key}) : super(key: key);

  @override
  _ConversationBottomSheetState createState() =>
      _ConversationBottomSheetState();
}

class _ConversationBottomSheetState extends State<ConversationBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            GestureDetector(
              onVerticalDragEnd: (details) {
                print('Dragged Down');
                if (details.primaryVelocity > 50) {
                  Navigator.pop(context);
                }
              },
              child: ListView(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                children: <Widget>[
                  NavigationPill(),
                  Center(
                    child: Text(
                      'Messages',
                      style: Styles.textHeading,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemBuilder: (context, index) {
                  return ChatRowWidget();
                },
                separatorBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(left: 75, right: 20),
                      child: Divider(color: Palette.accentColor),
                    ),
                itemCount: 5)
          ],
        ),
      ),
    );
  }
}
