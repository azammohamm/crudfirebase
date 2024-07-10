import 'package:crudperform/Screens/employee/employe.dart';
import 'package:crudperform/widgets/custom_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewScreen extends StatelessWidget {
  const HomeViewScreen({super.key});

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EmployeView(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      extendBody: true,
      backgroundColor: Colors.white,
      body: const Column(
        children: [

        ],
      ),
    );

  }
}
