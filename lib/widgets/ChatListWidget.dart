import 'package:flutter/material.dart';

import 'ChatItemWidget.dart';

class ChatListWidget extends StatelessWidget {
  final ScrollController listScrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemCount: 20,
      reverse: true,
      controller: listScrollController,
      itemBuilder: (context, index) => ChatItemWidget(index),
    );
  }
}
