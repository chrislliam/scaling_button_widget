import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:scaling_button_widget/scaling_button_widget.dart';

void main() {
  testWidgets('ScalingButton tap test', (WidgetTester tester) async {
    bool tapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ScalingButton(
            onTap: () {
              tapped = true;
            },
            child: Container(
              width: 100,
              height: 50,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );

    // Tap on the button
    await tester.tap(find.byType(Container));
    await tester.pump();

    // Verify that onTap callback is triggered
    expect(tapped, true);

    // Release the tap
    await tester.pump(const Duration(milliseconds: 200));
  });
}
