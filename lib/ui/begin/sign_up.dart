import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Column(
          children: [
            Row(
              children: [

                SizedBox(
                    height: 40,
                    width: 40,
                    child: Icon(Icons.chevron_left_rounded)),

                Text("Ro'yhatdan o'tish"),


              ],
            ),
            Text("Hisobni ochish"),
            Text("Ism"),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                label: Text("Ismigizni kiriting"),

              ),
            ),
            Text("Telefon raqam"),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                label: Text("998"),

              ),
            ),

             Text("Parol"),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                label: Text("Parolni kiriting"),
                prefixIcon: Icon(Icons.remove_red_eye_rounded),

              ),
            ),

            SizedBox(
              height: 40,
            ),





          ],
        ) ,
      ),
    );
  }
}
