import 'package:flutter/material.dart';


import 'package:iconsax/iconsax.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:tab_cach/features/children/presentation/view/children_view.dart';
import 'package:tab_cach/constant.dart';
import 'package:tab_cach/features/history/presentation/view/history_view.dart';
import '../../../../home/presentation/view/home_view.dart';
import '../../../../payments/presentation/view/payments_view.dart';
import '../../../../transaction/presentation/view/widgets/transaction_view.dart';



class BottomNavBarBody extends StatelessWidget {
  const BottomNavBarBody({super.key});
  List<Widget> _buildScreens() {
    return [
      HomeView(),
      TransactionView(),
      HistoryView(),
      PaymentsView(),
      ChildrenView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Iconsax.home5),
        title: ("Home"),
        activeColorPrimary: kPinActiveBorder,
        inactiveColorPrimary: kBackGroundColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Iconsax.card_send,),
        title: ("Transaction"),
        activeColorPrimary: kPinActiveBorder,
        inactiveColorPrimary: kBackGroundColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.manage_history_rounded),
        title: ("History"),
        activeColorPrimary: kPinActiveBorder,
        inactiveColorPrimary: kBackGroundColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Iconsax.bag_cross_1),
        title: ("Payments"),
        activeColorPrimary: kPinActiveBorder,
        inactiveColorPrimary: kBackGroundColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Iconsax.people),
        title: ("Children"),
        activeColorPrimary: kPinActiveBorder,
        inactiveColorPrimary: kBackGroundColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: PersistentTabView(
        context,
        navBarHeight: heightScreen*0.072,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: kbackgroundbottomBar,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(45),
          colorBehindNavBar: kBackGroundColor,
        ),
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 150),
          curve: Curves.easeInOutQuad,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style3,
      ),
    );
  }
}
