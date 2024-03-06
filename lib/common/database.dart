

import 'package:hive/hive.dart';
import 'package:pdaftar/common/model/model.dart';

import '../screen/begin/sign_in.dart';
List mmm=[];
class Database{
static final _myBox=Hive.box("kjhj");

 static bool isContains(PersonModel person) {
  if (_myBox.containsKey(person)) {
   // database.addEntries([MapEntry(mijoz.raqami!, mijoz)]); bundan oson varyant bor
   _myBox.add(person);
   mmm=_myBox as List;
   print("person qushildi✅ ");
   return true;
  } else {
   print("bunday raqam bilan ruyhatdan utilgan");


   return false;
  }
 }

static PersonStatus login(String phone, String password) {

  if (_myBox.containsKey(phone)) {
   if(_myBox.getAt(2)==password) {
    names=_myBox.getAt(0);
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
