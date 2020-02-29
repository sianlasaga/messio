// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:messio/widgets/ChatItemWidget.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: ChatItemWidget(0),
    ),
  );

  testWidgets('ChatItemWidget UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.byType(Container), findsNWidgets(3));
    expect(find.byType(Column), findsNWidgets(1));
    expect(find.byType(Row), findsNWidgets(2));
    expect(find.byType(Text), findsNWidgets(2));
  });
}
