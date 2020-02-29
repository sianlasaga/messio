import 'package:flutter/material.dart';
import 'package:messio/config/Palette.dart';
import 'package:intl/intl.dart';

class ChatItemWidget extends StatelessWidget {
  final int index;
  const ChatItemWidget(this.index);

  @override
  Widget build(BuildContext context) {
    if (index % 2 == 0) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  width: 200,
                  decoration: BoxDecoration(
                      color: Palette.selfMessageBackgroundColor,
                      borderRadius: BorderRadius.circular(8)),
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    'This is a sent message',
                    style: TextStyle(color: Palette.selfMessageColor),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
                  child: Text(
                    DateFormat('dd MMM kk:mm').format(
                        DateTime.fromMillisecondsSinceEpoch(1565888474278)),
                    style: TextStyle(
                        color: Palette.greyColor,
                        fontSize: 12,
                        fontStyle: FontStyle.normal),
                  ),
                )
              ],
            )
          ],
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                    width: 200.0,
                    decoration: BoxDecoration(
                        color: Palette.otherMessageBackgroundColor,
                        borderRadius: BorderRadius.circular(8.0)),
                    margin: EdgeInsets.only(left: 10.0),
                    child: Text(
                      'This is a received message',
                      style: TextStyle(color: Palette.otherMessageColor),
                    ))
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 5, top: 5, bottom: 5),
              child: Text(
                DateFormat('dd MMM kk:mm')
                    .format(DateTime.fromMillisecondsSinceEpoch(1565888474278)),
                style: TextStyle(
                    color: Palette.greyColor,
                    fontSize: 12,
                    fontStyle: FontStyle.normal),
              ),
            )
          ],
        ),
      );
    }
  }
}
