import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe_frontend/main.dart';

void main() {
  testWidgets('App renders Tic Tac Toe scaffold', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    expect(find.text('Tic Tac Toe'), findsOneWidget);
    expect(find.byType(AppBar), findsOneWidget);
    expect(find.widgetWithIcon(FilledButton, Icons.refresh), findsOneWidget);
  });

  testWidgets('Tapping a cell places X then O', (WidgetTester tester) async {
    await tester.pumpWidget(const TicTacToeApp());

    // Tap first cell -> X
    await tester.tap(find.byType(InkWell).first);
    await tester.pump();

    expect(find.text('X'), findsOneWidget);

    // Tap second cell -> O
    await tester.tap(find.byType(InkWell).at(1));
    await tester.pump();

    expect(find.text('O'), findsOneWidget);
  });
}
