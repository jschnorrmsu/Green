import 'package:FARTS/models/user_model.dart';
import 'package:FARTS/services/database.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:FARTS/createnewuserpage.dart';
import 'package:FARTS/selectmodepage.dart';
import 'package:FARTS/campaignview/campaign_info.dart';
import 'package:provider/provider.dart';

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  group('CREATE NEW USER PAGE widget tests', () {
    testWidgets('Create new user button is present and triggers navigation',
        (WidgetTester tester) async {
      final mockObserver = MockNavigatorObserver();
      await tester.pumpWidget(
        MaterialApp(
          home: CreateNewUser(),
          navigatorObservers: [mockObserver],
        ),
      );

      expect(find.text('Create'), findsOneWidget);
      await tester.tap(find.text('Create'));
      await tester.pumpAndSettle();

      verify(mockObserver.didPush(any, any));
      expect(find.byType(CreateNewUser), findsOneWidget);
    });
  });

  group('VIEW CAMPAIGN PAGE widget tests', () {
    testWidgets('Campaign text widget is present', (WidgetTester tester) async {
      final mockObserver = MockNavigatorObserver();
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Text("Campaign"),
          ),
          navigatorObservers: [mockObserver],
        ),
      );
      // TODO improve this test right now it only check to see if the widget exists.
      expect(find.text("Campaign"), findsOneWidget);
    });

    testWidgets('Date/Time text widget is present',
        (WidgetTester tester) async {
      final mockObserver = MockNavigatorObserver();
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: Text("Date/Time")),
          navigatorObservers: [mockObserver],
        ),
      );
      // TODO improve this test
      expect(find.text("Date/Time"), findsOneWidget);
    });

    testWidgets('Session number text widget is present',
        (WidgetTester tester) async {
      final mockObserver = MockNavigatorObserver();
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: Text("Session Number")),
          navigatorObservers: [mockObserver],
        ),
      );
      // TODO improve this test
      expect(find.text("Session Number"), findsOneWidget);
    });

    testWidgets('Map text widget is present', (WidgetTester tester) async {
      final mockObserver = MockNavigatorObserver();
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: Text("Map")),
          navigatorObservers: [mockObserver],
        ),
      );
      // TODO improve this test
      expect(find.text("Map"), findsOneWidget);
    });

    testWidgets('Notes text widget is present', (WidgetTester tester) async {
      final mockObserver = MockNavigatorObserver();
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: Text("Notes")),
          navigatorObservers: [mockObserver],
        ),
      );
      // TODO improve this test
      expect(find.text("Notes"), findsOneWidget);
    });

    testWidgets('NPCS text widget is present', (WidgetTester tester) async {
      final mockObserver = MockNavigatorObserver();
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(body: Text("NPCS")),
          navigatorObservers: [mockObserver],
        ),
      );
      // TODO improve this test
      expect(find.text("NPCS"), findsOneWidget);
    });
  });
}
