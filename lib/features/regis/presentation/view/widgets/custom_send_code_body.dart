import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lottie/lottie.dart';
import 'package:tab_cach/constant.dart';
import 'package:tab_cach/core/utils/style.dart';
import 'package:tab_cach/features/login/presentation/view/widgets/custom_otp_code.dart';

import '../../../../../core/widgets/custom_appbar.dart';

class SendCode extends StatefulWidget {
  const SendCode();

  @override
  State<SendCode> createState() => _SendCodeState();
}


class _SendCodeState extends State<SendCode> {
    @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(seconds: 3),
      ()  {
      Get.to(CustomOtpCode());
      }
          
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 368,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: kContainerColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "A PIN will be send to you",
                    style: Style.textStyle26.copyWith(
                      fontWeight: FontWeight.w400
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Lottie.asset("assets/animations/loading.json",
                  height: 100
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

 
}
