import 'dart:js_interop';

import 'package:hive/hive.dart';
import 'package:pdaftar/common/model/model.dart';

import '../screen/begin/sign_in.dart';

class Database{

 static Map<String,PersonModel> Malumotlar={};

 static bool isContains(PersonModel person) {
  if (!Malumotlar.containsKey(person)) {
   // database.addEntries([MapEntry(mijoz.raqami!, mijoz)]); bundan oson varyant bor
   Malumotlar[person.phoneNumber] = person;
   print("person qushildi✅ ");
   return true;
  } else {
   print("bunday raqam bilan ruyhatdan utilgan");


   return false;
  }
 }

static PersonStatus login(String phone, String password) {

  if (Malumotlar.containsKey(phone)) {
   if(Malumotlar[phone]!.password==password) {
    names=Malumotlar[phone]!.name;
     return PersonStatus.hammasiZor;
   }
   else{
     return PersonStatus.kodXato;
   }
  } else {
   return PersonStatus.royhatdanOtmagan;
  }
 }
}


enum PersonStatus {
 hammasiZor("Hammasi zo'r Homega kirdingiz"),
 royhatdanOtmagan("Siz hali ro'yhatdan o'tmagansiz"),
 kodXato("Kod xato kiritildi");

 final String message;
 const PersonStatus(this.message);
}
