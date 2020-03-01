import 'package:flutter/material.dart';
import 'package:messio/config/Palette.dart';
import 'package:messio/widgets/ConversationBottomSheet.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController _textEditingController =
      new TextEditingController();

  InputWidget();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 60,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            border:
                Border(top: BorderSide(color: Palette.greyColor, width: 0.5)),
            color: Colors.white),
        child: Row(
          children: <Widget>[
            Material(
              color: Colors.white,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 1),
                  child: IconButton(
                    icon: Icon(Icons.face),
                    color: Palette.accentColor,
                    onPressed: () => {
                      showBottomSheet(
                          context: context,
                          builder: (BuildContext bc) {
                            return Container(
                              child: Wrap(
                                children: <Widget>[ConversationBottomSheet()],
                              ),
                            );
                          })
                    },
                  )),
            ),
            // Text Input
            Flexible(
              child: Material(
                child: Container(
                  child: TextField(
                    style: TextStyle(
                        color: Palette.primaryTextColor, fontSize: 15),
                    controller: _textEditingController,
                    decoration: InputDecoration.collapsed(
                        hintText: 'Type a message',
                        hintStyle: TextStyle(color: Palette.greyColor)),
                  ),
                ),
              ),
            ),
            // Send button
            Material(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => {},
                  color: Palette.accentColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
