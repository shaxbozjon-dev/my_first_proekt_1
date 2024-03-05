import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
@RoutePage()
class Star extends StatefulWidget {
  const Star({super.key});

  @override
  State<Star> createState() => _StarState();
}

class _StarState extends State<Star> {
  @override
  Widget build(BuildContext context) {
    return Text("Star");
  }
}
