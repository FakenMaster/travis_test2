import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:travis_test2/my_widget.dart';

void main() {
  testWidgets('Golden file testing', (WidgetTester tester) async {
    await tester.pumpWidget(
      RepaintBoundary(
        child: MyWidget(40),
      ),
    );

    await tester.pumpAndSettle();

    await expectLater(
      find.byType(RepaintBoundary),
      matchesGoldenFile('golden-file.png'),
    );
  });
}
