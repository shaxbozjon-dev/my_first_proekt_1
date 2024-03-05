
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pdaftar/common/model/model.dart';
import 'package:pdaftar/screen/begin/sign_in.dart';

import '../../common/database.dart';

@RoutePage()
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    final name=TextEditingController();
    final password=TextEditingController();
    final phoneNumber=TextEditingController();
    bool _obcourse2=true;
    return SafeArea(
      child: Scaffold(

        body:Column(
          children: [
            Row(
              children: [

                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>SignIn()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18,top: 18,bottom: 18),
                    child: SizedBox(
                      height: 34,
                      width: 34,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.blueGrey,
                          ),
                          child: Icon(Icons.chevron_left_rounded)),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 18,bottom: 18),
                  child: Text("Ro'yhatdan o'tish",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                ),


              ],
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Hisobni ochish",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 18),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Ism",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple.shade900),)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 18,bottom: 18,top: 5),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                  hintText: "Ismigizni kiriting",

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 18),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Telefon raqam",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple.shade900),)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 18,bottom: 18,top: 5),
              child: TextField(
                controller: phoneNumber,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
                  hintText: "998",

                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 18,right: 18),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Parol",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple.shade900),)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 18, right: 18, top: 5, bottom: 30),
              child: TextField(
                controller: password,
                obscureText: _obcourse2,
                decoration: InputDecoration(
                  hintText: "Parolni kiriting",
                  hintStyle: TextStyle(color: Colors.black45),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  suffixIcon: GestureDetector(
                    onTap: () {

                      _obcourse2 = !_obcourse2;

                    },
                    child: Icon(_obcourse2 ? Icons.visibility:Icons.visibility_off),
                  ),
                ),
              ),
            ),


            TextButton(
              onPressed: (){

                setState(() {
                  PersonModel newObyekt=PersonModel(name: name.text, password: password.text, phoneNumber: phoneNumber.text);
                  Database.isContains(newObyekt);
                  name.clear();
                  password.clear();
                  phoneNumber.clear();

                });

              },
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    child: Center(child: Text("Hisobni ochish${Database.Malumotlar}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),
                ),
              ),
            ),



          ],
        ) ,


      ),
    );
  }
}
