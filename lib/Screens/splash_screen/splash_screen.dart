import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/base/init_controllery.dart';
import '../signin/sign_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
          () {
        //code here to next screen
        Future.delayed(Duration.zero, () {
          Get.off(() => const SignInView(), binding: AppBindings());
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 05),
                    child:  Icon(
                      Icons.add_circle,
                      size: 32,
                    ),
                  ),
                  const SizedBox(height: 05),
                  Icon(
                    Icons.ac_unit,
                    size: 32,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
