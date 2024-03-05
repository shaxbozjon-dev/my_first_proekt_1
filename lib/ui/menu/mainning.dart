import 'package:flutter/material.dart';

import '../../screen/begin/sign_in.dart';
class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Text("Nega kelding ${names}",style: TextStyle(color: Colors.amber),);
  }
}
