import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../common/database.dart';
import '../../routes/app_router.gr.dart';
import '../menu/menu.dart';
String names="";

@RoutePage()

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final password = TextEditingController();
  final phoneNumber = TextEditingController();
  bool obcourse = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                "Kirish",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Salom, Xush kelibsiz! ",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Telefon raqam",
                    style: TextStyle(color: Colors.purple.shade800),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 18, right: 18, bottom: 28, top: 5),
              child: TextField(
                controller: phoneNumber,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "+998",
                  hintStyle: TextStyle(color: Colors.black45),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Parol",
                    style: TextStyle(color: Colors.purple.shade800),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 18, right: 18, top: 5, bottom: 18),
              child: TextField(
             scrollController: ScrollController(initialScrollOffset: 0),
                controller: password,
                obscureText: obcourse,
                decoration: InputDecoration(
                  hintText: "Parolni kiriting",
                  hintStyle: TextStyle(color: Colors.black45),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obcourse = !obcourse;
                      });
                    },
                    child: Icon(
                        obcourse ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
              ),
            ),
            Padding (
              padding: const EdgeInsets.only(right: 18),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text("Parolni unutdigizmi",style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
            TextButton (
              onPressed: () {
                setState(() {
                  if( Database.login(phoneNumber.text, password.text)==PersonStatus.hammasiZor){

                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Menu()));
                  }
                  else{
                    sleep(Duration(milliseconds: 3));
                    Container (
                      height: 100,
                      width: 100,
                      color: Colors.green,
                    );
                  }

                });


              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.black54,
                    ),
                    child: Center(
                      child: Text(
                        "Kirish ${Database.myBox.values} ",
                        style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                children: [
                  Text("   Hisobigiz yo'qmi?",style: TextStyle(color: Colors.blueGrey,fontSize: 18),),
                  TextButton(
                      onPressed: (){
                        setState(() {
                       AutoRouter.of(context).push(RouteB());
                        });
                      },
                      child: Text("Ro'yhatdan o'tish",style: TextStyle(color: Colors.green.shade900,fontSize: 18),)),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }


}
