
import 'package:crudperform/core/base/base_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/cupertino.dart';

class SignUpController extends BaseController{
  var emailTEC=TextEditingController();
  var passwordTEC=TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool showPassword = true;

  FirebaseAuth auth=FirebaseAuth.instance;

  bool isEmail(email) {
    return RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]+(\.[a-zA-Z]{2,})+$")
        .hasMatch(email);
  }

  @override
  void dispose()
  {
    emailTEC.dispose();
    passwordTEC.dispose();
  }

}