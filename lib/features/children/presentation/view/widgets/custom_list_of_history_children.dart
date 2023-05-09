import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_process.dart';
import '../../../data/repo/children_history_repo.dart';



class CustomListOfHistoryChildren extends StatelessWidget {
  const CustomListOfHistoryChildren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    return Container(
      height: heightScreen*0.8,
      width: widthScreen,
      padding: EdgeInsets.symmetric(horizontal: widthScreen*0.05).copyWith(top: heightScreen*0.04),
      child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: ListOfChildrenHistory.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:  EdgeInsets.only(bottom: heightScreen*0.015),
              child: CustomProcess(
                  title:ListOfChildrenHistory[index].title,
                  date:ListOfChildrenHistory[index].date ,
                  time:ListOfChildrenHistory[index].time ,
                  money:ListOfChildrenHistory[index].money ),
            );
          }
      ),
    );
  }
}
