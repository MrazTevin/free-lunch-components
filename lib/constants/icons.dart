import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconly/iconly.dart';

// This file will contain the svg icons that'll be used in the application

class AppSvgIcons {
  static Widget home =
      SvgPicture.asset('assets/svgs/home.svg', semanticsLabel: 'home');
  static Widget homeActive =
      SvgPicture.asset('assets/svgs/home-active.svg', semanticsLabel: 'home active');
  static Widget hamburgerDark =
      SvgPicture.asset('assets/svgs/hambuger-dark.svg', semanticsLabel: 'hambuger dark');
  static Widget hamburgerLight =
      SvgPicture.asset('assets/svgs/hambuger-light.svg', semanticsLabel: 'hambuger light');
  static Widget hamburgerPrimary2 =
      SvgPicture.asset('assets/svgs/hambuger-primary-2.svg', semanticsLabel: 'hambuger Primary');
  static Widget hamburgerLightTotal =
      SvgPicture.asset('assets/svgs/hambuger-light.svg', semanticsLabel: 'hambuger light', width: 32, height: 24);
  static Widget hamburgerPrimary =
      SvgPicture.asset('assets/svgs/hambuger-primary.svg', semanticsLabel: 'hambuger primary', width: 32, height: 24,);
  static Widget lunchSent =
      SvgPicture.asset('assets/svgs/svg_one.svg', semanticsLabel: 'Lunch Sent');
  static Widget withdrawal =
      SvgPicture.asset('assets/svgs/svg2.svg', semanticsLabel: 'Withdrawal');
  static Widget lunchRecieved =
      SvgPicture.asset('assets/svgs/svg3.svg', semanticsLabel: 'Lunch Recieved');
}


class AppIcons {
  static const IconData home = IconlyBold.home;
  static const IconData notification= IconlyLight.notification;
  static const IconData profile = IconlyLight.profile;
  static const IconData search = IconlyLight.search;
  static const IconData upload = IconlyLight.upload;
  static const IconData edit = IconlyLight.edit;
  static const IconData arrowLeft = IconlyLight.arrow_left;
 
  // Add more icons here

  static Widget getIcon(String iconName, Color color) {
    switch (iconName) {
      case 'home':
        return Icon(home, color: color);
      case 'hamburger':
        return Icon(notification, color: color);
      case 'profile':
        return Icon(profile, color: color);
      case 'search':
        return Icon(search, color: color);
      case 'upload':
        return Icon(upload, color: color);
      case 'edit':
        return Icon(edit, color: color);
      case 'arrowLeft':
        return Icon(arrowLeft, color: color);
      // Add more cases for other icons
      default:
        return Icon(Icons.error, color: color);
    }
  }
}