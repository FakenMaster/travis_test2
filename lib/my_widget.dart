import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyWidget extends StatelessWidget {
  const MyWidget(this.radius, {Key key}) : super(key: key);
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 12,
            color: Color(0xFF01579B),
          ),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        child: FlutterLogo(),
      ),
    );
  }
}
