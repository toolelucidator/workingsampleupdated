import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../constants/constants.dart';
import '../screens/home.dart';
import '../screens/register.dart';

class HomeController extends GetxController {
  dynamic argumentData = Get.arguments;
  late User? firebaseUser=argumentData;
  static HomeController instance =  Get.find();

  setUserinfo(){
    print(userUID);
    return firebaseUser;
  }

  createBrancnRTDB(){

  }

}