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
    return  Column(
      children: [

         Column(
            children: [

              SizedBox(
                height: 300,
              ),

              Text("Do'kon qo'shishingiz kerak",style: TextStyle(color: Colors.purple,),),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(width: 4,color: Colors.purple),
                        borderRadius: BorderRadius.all(Radius.circular(14)),

                    ),
                    child: Text("dfg"),
                  ),
                ),
              ),

            ],
          ),


      ],
    );
  }
}
