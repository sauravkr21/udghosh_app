import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(UltimateFrisbee());

class UltimateFrisbee extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
home: Home(),
);
}
}
