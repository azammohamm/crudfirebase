import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/base/base_controller.dart';


class SignInController extends BaseController {

  final FirebaseAuth auth=FirebaseAuth.instance;

  final formKey = GlobalKey<FormState>();
  bool showPassword = true;
  RxBool isValidForm = true.obs;
  RxBool isRemember = false.obs;
  RxString selectOption = 'Punjab Masstransit Authority'.obs;
  List<String> dropdownList = ['Orange Line','Green line','Rawalpindi-Islamabad MetroBus System','Multan MetroBus System'];
  List<String> propertyTypeList = ["Commercial","Residential","Mixed use"];


  var emailTEC = TextEditingController();
  var passwordTEC = TextEditingController();


  bool isEmail(email) {
    return RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]+(\.[a-zA-Z]{2,})+$")
        .hasMatch(email);
  }




  @override
  void dispose() {
    emailTEC.dispose();
    passwordTEC.dispose();
  }
}
