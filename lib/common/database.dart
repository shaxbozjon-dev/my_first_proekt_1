

import 'package:hive/hive.dart';
import 'package:pdaftar/common/model/model.dart';

import '../screen/begin/sign_in.dart';


class Database{
static var myBox=Hive.box("salom");


 static bool isContains(PersonModel person) {
  if (!myBox.containsKey(person)) {
   // database.addEntries([MapEntry(mijoz.raqami!, mijoz)]); bundan oson varyant bor
   myBox.add(person);

   print("person qushildi✅ ");
   return true;
  } else {
   print("bunday raqam bilan ruyhatdan utilgan");


   return false;
  }
 }

static PersonStatus login(String phone, String password) {

  if (myBox.values.contains(phone)) {
print(myBox.values.first);
     return PersonStatus.hammasiZor;


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
