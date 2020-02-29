// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:messio/widgets/ChatAppBar.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: ChatAppBar(),
    ),
  );

  testWidgets('ChatAppBar UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.text('Sian'), findsOneWidget);
    expect(find.text('@sianlasaga'), findsOneWidget);
    expect(find.byType(Icon), findsNWidgets(1));
    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}
