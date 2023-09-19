import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/icons.dart';

class TotalCardOne extends StatelessWidget {
  final String totalNum;
  final double width;
  final double height;
  const TotalCardOne(
      {super.key,
      required this.totalNum,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: AppColors.boxShade,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'You have',
            style: TextStyle(
              color: AppColors.shadeTextColor,
              fontSize: width * .01 + 14,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: AppSvgIcons.hamburgerPrimary,
              ),
              Text(
                totalNum,
                style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: width * .03 + 62,
                    fontWeight: FontWeight.w800),
              ),
            ],
          ),
          Text(
            'Free Lunches',
            style: TextStyle(
              color: AppColors.shadeTextColor,
              fontSize: width * .01 + 14,
            ),
          ),
        ],
      ),
    );
  }
}

class TotalCardTwo extends StatelessWidget {
  final String totalNum;
  final double width;
  final double height;
  const TotalCardTwo(
      {super.key,
      required this.totalNum,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Available Lunches',
            style: TextStyle(
              color: AppColors.color,
              fontSize: width * .01 + 14,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                totalNum,
                style: TextStyle(
                    color: AppColors.color,
                    fontSize: width * .03 + 52,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(width: width * .02),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: AppSvgIcons.hamburgerLightTotal,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
