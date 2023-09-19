import 'package:flutter/material.dart';

import 'constants/colors.dart';
import 'constants/icons.dart';
import 'widgets/action_buttons.dart';
import 'widgets/avatar.dart';
import 'widgets/total_card.dart';
import 'widgets/account_info_withdraw_summary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'WorkSans',
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Display'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Text('Home Icon'),
              AppSvgIcons.home,
              const Text('Home Active'),
              AppSvgIcons.homeActive,
              const Text('Hambuger'),
              AppSvgIcons.hamburgerDark,
              const Text('Hambuger Primary'),
              AppSvgIcons.hamburgerPrimary,
              SizedBox(height: height * .02),
              AppSvgIcons.hamburgerPrimary2,
              const Text('Hambuger Light'),
              Container(
                color: Colors.black,
                padding: const EdgeInsets.all(10),
                child: AppSvgIcons.hamburgerLight,
              ),
              const Text('Luch Sent'),
              AppSvgIcons.lunchSent,
              const Text('Withdrawal'),
              AppSvgIcons.withdrawal,
              const Text('Lunch Recived'),
              AppSvgIcons.lunchRecieved,
              const Text('Mini Action Button'),
              MiniActionBtn(
                text: 'Send Lunch',
                btnColor: AppColors.tPrimaryColor,
                icon: AppSvgIcons.hamburgerLight,
              ),
              const Text('Action Button 1'),
              ActionBtn(
                text: 'Return Home',
                widthM: width * .8,
                btnColor: AppColors.tPrimaryColor,
              ),
              const Text('Action Button 2'),
              ActionBtn(
                text: 'Send Lunch',
                widthM: width * .8,
                icon: AppSvgIcons.hamburgerLight,
                btnColor: AppColors.tPrimaryColor,
              ),
              SizedBox(height: height * .02),
              ActionBtn(
                text: 'Request Withdraw',
                widthM: width * .8,
                icon: AppIcons.getIcon('upload', AppColors.tWhite),
                btnColor: AppColors.tShadeColor,
              ),
              const Text('Withdraw'),
              MediumActionBtn(
                text: 'Withdraw',
                icon: AppIcons.getIcon('upload', AppColors.tWhite),
                btnColor: AppColors.tPrimaryColor,
              ),
              SizedBox(height: height * .02),
              const MediumActionBtn(
                text: 'Add your account details',
                btnColor: AppColors.tPrimaryColor,
              ),
              const Text('Total'),
              TotalCardOne(
                totalNum: '12',
                width: width * .9,
                height: height * .2,
              ),
              const Text('Total 2'),
              TotalCardTwo(
                totalNum: '12',
                width: width * .9,
                height: height * .2,
              ),
              const Text('Total 3'),
              SizedBox(height: height * .02),
              TotalCardThree(
                totalNum: '12',
                width: width * .9,
                height: height * .2,
              ),
              SizedBox(height: height * .02),
              WithdrawSummary(
                totalLunch: 'x12',
                worth: '\$120(\$10 per lunch)',
                width: width,
                height: height,
              ),
              SizedBox(height: height * .02),
              AccountInfo(
                width: width,
                height: height,
                bankName: 'GTB',
                accountName: 'Samuel Igboji Uche',
                accountNumber: '*******415',
              ),
              SizedBox(height: height * .02),
              const AvatarComponent(
                image: AssetImage('assets/images/dp.png'),
                width: 50,
                height: 50,
              ),
              SizedBox(height: height * .02),
              const AvatarComponent(
                image: AssetImage('assets/images/dp.png'),
                width: 40,
                height: 40,
              ),
              SizedBox(height: height * .02),
            ],
          ),
        ),
      ),
    );
  }
}
