/*
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import '../core/base/init_controllery.dart';
import 'custom_button.dart';
import 'custom_form_field.dart';

class TitleBarApp extends StatelessWidget implements PreferredSizeWidget {

  final double? elevation;
  final bool? isBack;
  final Padding? padding;

   const TitleBarApp({
    super.key,
    this.isBack,
    this.elevation,
     this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 133,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(37),
            topRight: Radius.circular(40),
            bottomLeft: Radius.circular(1.70),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 10.50,
            offset: Offset(0, -1),
            spreadRadius: 0,
          )
        ],
      ),
      child: AppBar(
        backgroundColor: AppColors().whiteColor,
        surfaceTintColor: AppColors().whiteColor,
        elevation: elevation??1.5,
        centerTitle: true,
        automaticallyImplyLeading: isBack??false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(
                      () => const UserViewScreen(),
                      binding: AppBindings(),
                      transition: Transition.circularReveal,
                      duration: const Duration(milliseconds: 500),
                    );
                  },
                  child: Image.asset(
                    AppAssets().profileImg,
                    width: 40,
                    height: 40,
                  ),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Text(
                  'Hello, Hamza',
                  style: GoogleFonts.roboto(
                    color: const Color(0xFF424242),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Image.asset(
                  AppAssets().clapIcon,
                  width: 40,
                  height: 40,
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.to(
                      () => const FilterScreen(),
                      binding: AppBindings(),
                      transition: Transition.circularReveal,
                      duration: const Duration(milliseconds: 500),
                    );
                  },
                  child: Image.asset(
                    AppAssets().filterIc,
                    scale: 2.5,
                  ),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Image.asset(
                  AppAssets().bellIc,
                  scale: 2.5,
                ),
                SizedBox(
                  width: 1.w,
                ),
                GestureDetector(
                  onTap: () {
                    ticketDialog(context);
                  },
                  child: Image.asset(
                    AppAssets().searchIc,
                    scale: 2.5,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  //////search dialog////////
  ticketDialog(context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        contentPadding: const EdgeInsets.all(0),
        content: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),

              /////////search ticket by coad/////////
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            text: 'Search Ticket by Code',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            fontColor: AppColors().fontColor,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        _dismissDialog(context);
                      },
                      child: Icon(
                        Icons.close,
                        color: AppColors().blackColor,
                        size: 14.sp,
                      ),
                    ),

                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomFormField(
                titleText: "",
                hint: '',
                titleFontSize: 10,
                fontSize: 11,
                contentPadding: 5,
                titleFontWeight: FontWeight.w600,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 3.h, left: 4.h, right: 3.h, bottom: 2.h),
                child: CustomButton(
                  btnText: 'Search Ticket',
                  borderColor: AppColors().orangeColor,
                  btnColor: AppColors().orangeColor,
                  txtColor: AppColors().whiteColor,
                  borderRadius: 2,
                  btnWidth: 50.w,
                  txtSize: 11.sp,
                  onPressed: () {},
                  btnHeight: 26,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _dismissDialog(BuildContext context) {
  Navigator.of(context).pop();
}
*/
