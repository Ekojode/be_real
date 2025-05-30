import 'package:be_real/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarApp extends StatelessWidget {
  const BottomNavBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.tabColor),
      child: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.tabColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.pokerCard),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.bonFire),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.chat),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(AppIcons.user),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
