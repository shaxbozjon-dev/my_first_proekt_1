import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
@RoutePage()
class Transfer extends StatefulWidget {
  const Transfer({super.key});

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  @override
  Widget build(BuildContext context) {
    return Text("Transfer");
  }
}
