import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tab_cach/core/utils/assets.dart';
import 'package:tab_cach/features/children/presentation/view/widgets/custom_list_of_children.dart';
import 'package:tab_cach/features/children/presentation/view/widgets/custom_list_of_history_children.dart';
import 'package:tab_cach/features/home/presentation/view/widgets/custom_Appbar_home.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/style.dart';
import 'custom_add_children.dart';

class ChildrenBody extends StatelessWidget {
  const ChildrenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:widthScreen*0.052).copyWith(top: heightScreen*0.07,),
            child: CustomAppbarHome(
              image: Images.person4,
              title: "Mohamed",
              icon1: Icon(Icons.add_box_outlined),
              onPressedIconOne:(){
                showAlertDialog(context);
              },

            ),
          ),

          SizedBox(height: heightScreen*0.07,),
          Text(
            "Current Balance",
            style: GoogleFonts.prompt(
                textStyle: Style.textStyle20,
                color: kPinInActiveBorder,
                fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "Current Balance",
            style: GoogleFonts.prompt(
                textStyle: Style.textStyle30,
                color: kbackgroundbottomBar,
                fontWeight: FontWeight.w400,
            ),
          ),

          SizedBox(height: heightScreen*0.06,),

          CustomListOfChildren(),

          Expanded(
              child: CustomListOfHistoryChildren(),
          ),
        ],
      ),
    );
  }
}
