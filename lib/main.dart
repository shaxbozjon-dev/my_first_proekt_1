import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pdaftar/routes/app_router.dart';

void main() async{
await Hive.initFlutter();
 var box=await Hive.openBox("salom");

  runApp(Just());
}
class Just extends StatelessWidget {
  const Just({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter=AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(),
    );
  }
}
