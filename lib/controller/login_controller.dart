import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:untitled3/constant.dart';

class LoginController extends GetxController {
  RxBool isPasswordHidden = true.obs;
  RxBool isSignUpPasswordHidden = true.obs;
  static LoginController instance = Get.find();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;
}
