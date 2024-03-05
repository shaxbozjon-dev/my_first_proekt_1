import 'package:flutter/material.dart';
import 'package:pdaftar/routes/app_router.dart';
import 'package:pdaftar/routes/app_router.gr.dart';
import 'package:pdaftar/screen/begin/sign_in.dart';

void main() {
  runApp(Nima());
}
class Nima extends StatelessWidget {
  const Nima({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter=AppRouter();
    return MaterialApp.router(
      routerConfig: appRouter.config(),
    );
  }
}
