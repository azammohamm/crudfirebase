import 'package:crudperform/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/custom_form_field.dart';

class EmployeView extends StatefulWidget {
  const EmployeView({super.key});

  @override
  State<EmployeView> createState() => _EmployeViewState();
}

class _EmployeViewState extends State<EmployeView> {
  TextEditingController nameTec = TextEditingController();
  TextEditingController ageTec = TextEditingController();
  TextEditingController locationTec = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Employee",
                style: GoogleFonts.raleway(
                  color: Colors.blue,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                )),
            Text(
              "Form",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.amberAccent),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CustomFormField(
              titleText: "Enter Name",
              hint: 'Enter Name',
              titleFontSize: 24,
              fontSize: 14,
              contentPadding: 12,
              tec: nameTec,
            ),
            SizedBox(
              height: 10,
            ),
            CustomFormField(
              titleText: "Age",
              hint: 'Enter Age',
              titleFontSize: 24,
              fontSize: 14,
              contentPadding: 12,
              tec: ageTec,
            ),
            SizedBox(
              height: 10,
            ),
            CustomFormField(
              titleText: "Enter Location",
              hint: 'Enter location',
              titleFontSize: 24,
              fontSize: 14,
              contentPadding: 12,
              tec: locationTec,
            ),
            SizedBox(
              height: 10,
            ),
            CustomButton(
              btnText: "Submit",
              btnColor: Colors.blue,
              txtColor: Colors.white,
              btnHeight: 8.h,
              onPressed: ()
              {

              },
            ),
          ],
        ),
      ),
    );
  }
}
