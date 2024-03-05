import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../screen/begin/sign_in.dart';

@RoutePage()
class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Nega kelding ${names}",
      style: TextStyle(color: Colors.amber),
    );
  }
}
