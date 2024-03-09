import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdaftar/common/car_adapter.dart';
import 'package:pdaftar/routes/app_router.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory=await getApplicationDocumentsDirectory();
await Hive.initFlutter();
Hive.init(appDocumentDirectory.path);
  await Hive.openBox("salom");
Hive.registerAdapter(PersonAdapter());

  runApp(Menuqq());

}

class Menuqq extends StatefulWidget {
  const Menuqq({super.key});

  @override
  State<Menuqq> createState() => _MenuqqState();
}

class _MenuqqState extends State<Menuqq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      ),
    );
  }
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
