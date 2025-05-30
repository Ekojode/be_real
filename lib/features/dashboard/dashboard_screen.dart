import 'package:be_real/features/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/core.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Positioned(
            top: -80,
            left: 0,
            right: 0,
            child: Image.asset(
              AppImages.sunset,
              fit: BoxFit.cover,
              height: screenSize.height,
            ),
          ),
          Positioned(
            top: 100,
            child: SizedBox(
              width: screenSize.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Stroll Bonfire",
                        style: TextStyle(
                          color: AppColors.primaryShade,
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              blurRadius: 7.9,
                              color: AppColors.black.withValues(alpha: 0.2),
                              offset: Offset(0, 0),
                            ),
                            Shadow(
                              blurRadius: 2,
                              color: Color(0XFFBEBEBE),
                              offset: Offset(0, 0),
                            ),
                            Shadow(
                              blurRadius: 2,
                              color: Color(0XFF24232F).withValues(alpha: 0.2),
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 30,
                        color: AppColors.primaryShade,
                        shadows: [
                          Shadow(
                            blurRadius: 0.3,
                            color: AppColors.black.withValues(alpha: 0.5),
                            offset: Offset(0, 0.3),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(AppIcons.timer),
                      SizedBox(width: 5),
                      Text(
                        "22h 00m",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      SvgPicture.asset(AppIcons.user2),
                      SizedBox(width: 5),
                      Text(
                        "103",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: screenSize.height / 2 - 50,
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    AppColors.black.withValues(alpha: 0.5),
                    AppColors.black.withValues(alpha: 0.7),
                    AppColors.black,
                  ],
                  stops: [0.0, 0.1, 0.2, 0.3],
                ),
              ),
              height: screenSize.height / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: screenSize.width, height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(AppImages.user, height: 70),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Text(
                            "Angelina, 28",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 11,
                              color: AppColors.white,
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            width: screenSize.width - 120,
                            child: Text(
                              "What is your favorite time of the day?",
                              maxLines: 2,
                              style: TextStyle(
                                color: Color(0XFFF5F5F5),
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: screenSize.width,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '“Mine is definitely the peace in the morning.”',
                        style: TextStyle(
                          color: AppColors.primaryShade.withValues(alpha: 0.7),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: screenSize.width - 32,
                    child: Row(
                      children: [
                        TextPreviews(
                          id: "a",
                          text: "The peace in the early mornings",
                        ),
                        Spacer(),
                        TextPreviews(id: "b", text: "The magical golden hours"),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: screenSize.width - 32,
                    child: Row(
                      children: [
                        TextPreviews(
                          id: "c",
                          text: "Wind-down time after dinners",
                        ),
                        Spacer(),
                        TextPreviews(
                          isSelected: true,
                          id: "d",
                          text: "The serenity past midnight",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: screenSize.width - 32,
                    child: Row(
                      children: [
                        Text(
                          "Pick your option. \nSee who has a similar mind.",
                          style: TextStyle(
                            color: Color(0XFFE5E5E5),
                            fontSize: 12,
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.primary,
                              width: 2.2,
                            ),
                          ),
                          child: SizedBox(
                            height: 25,
                            width: 25,
                            child: SvgPicture.asset(AppIcons.microphone),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primary,
                          ),
                          child: SizedBox(
                            height: 25,
                            width: 25,
                            child: Icon(Icons.arrow_forward),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBarApp(),
    );
  }
}
