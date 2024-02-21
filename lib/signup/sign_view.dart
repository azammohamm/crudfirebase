import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_form_field.dart';
import 'sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
      initState: (_) {
        Get.put(SignInController());
      },
      builder: (_) {
        return  Scaffold(
          extendBody:true,
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset:true,
          body: Column(
            children: [
              Text("Azam"),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 4.w,vertical:2.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 16.h),
                    const Icon(
                      Icons.home,
                      size: 32,
                    ),
                    SizedBox(height: 0.4.h),
                    const Icon(
                      Icons.add_circle,
                      size: 32,
                    ),
                    SizedBox(height: 0.8.h),
                    Center(
                      child: Text(
                        'Let’s Sign you in.',
                        style: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 58),
                    //getItemCards(context, "Service Providers"),
                    SizedBox(
                      height: 0.8.h,
                    ),
                    CustomFormField(
                        titleText: 'Usercode/Email ',
                        titleFontWeight: FontWeight.w600,
                        titleColor: Colors.red,
                        hint: 'Enter Usercode/Email address',
                        titleFontSize: 11.sp,
                        fieldColor: Colors.grey,
                        fontSize: 10.sp,
                        contentPadding: 10),
                    SizedBox(
                      height: 0.8.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom
                      ),
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
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      btnText: 'Sign In',
                      btnWidth: double.infinity,
                      btnColor: Colors.orange,
                      txtColor: Colors.white,
                      btnHeight: 5.h,
                      onPressed: () {
                        //   Get.to(
                        //       () => const BottomNavigation(),
                        //   binding: AppBindings(),
                        //   transition: Transition.circularReveal,
                        //   duration: const Duration(milliseconds: 500),
                        // );

                      },
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'A Project of OLMRTS | Developed by',
                          style: GoogleFonts.roboto(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: GestureDetector(
                            onTap: ()
                            {
                             // _launchURL();
                            },
                            child: Text(
                              'Prosigns',
                              style: GoogleFonts.roboto(
                                color: Colors.grey,
                                fontSize: 16,
                                decoration: TextDecoration.underline,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        //_launchURL();
                      },
                      child: Text(
                        'Report a Problem',
                        style: GoogleFonts.roboto(
                          color: Colors.blue,
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )

          //
        );
      },
    );
  }

}
