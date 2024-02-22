import 'package:crudperform/Screens/signUp/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/custom_form_field.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
      initState: (_) {
        Get.put(SignUpController());
      },
      builder: (_) {
        return Scaffold(
          extendBody: true,
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      CustomFormField(
                        titleText: 'Usercode/Email ',
                        titleFontWeight: FontWeight.w600,
                        titleColor: Colors.red,
                        hint: 'azammohammad376@gmail.com',
                        titleFontSize: 11.sp,
                        fieldColor: Colors.grey,
                        fontSize: 10.sp,
                        contentPadding: 10,
                        tec: controller.emailTEC,
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "Please enter the correct email";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 0.8.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: CustomFormField(
                          titleText: 'Password',
                          hint: '*******',
                          titleFontSize: 11.sp,
                          fontSize: 10.sp,
                          contentPadding: 10,
                          obscureText: controller.showPassword,
                          showPassword: true,
                          onPressed: () {
                            controller.showPassword = !controller.showPassword;
                            controller.update();
                          },
                          tec: controller.passwordTEC,
                          validator: (value) {
                            if (value != null && value.isEmpty) {
                              return "Please enter the password";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomButton(
                  btnText: 'Sign Up',
                  btnWidth: double.infinity,
                  btnColor: Colors.orange,
                  txtColor: Colors.white,
                  btnHeight: 5.h,
                  onPressed: () {
                    if (controller.formKey.currentState!.validate()) {
                      controller.auth.createUserWithEmailAndPassword(
                        email: controller.emailTEC.text.toString(),
                        password: controller.passwordTEC.text.toString(),
                      );
                    }
                    /* Get.to(
                              () =>
                          binding: AppBindings(),
                          transition: Transition.circularReveal,
                          duration: const Duration(milliseconds: 500),
                        );*/
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
