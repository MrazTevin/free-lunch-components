import 'package:flutter/material.dart';

import 'constants/colors.dart';
import 'constants/icons.dart';
import 'widgets/action_buttons.dart';
import 'widgets/total_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Home());
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
              const Text('Mini Action Button'),
              MiniActionBtn(
                text: 'Send Lunch',
                btnColor: AppColors.primaryColor,
                icon: AppSvgIcons.hamburgerLight,
              ),
              const Text('Action Button 1'),
              ActionBtn(
                text: 'Return Home',
                widthM: width * .8,
                btnColor: AppColors.primaryColor,
              ),
              const Text('Action Button 2'),
              ActionBtn(
                text: 'Send Lunch',
                widthM: width * .8,
                icon: AppSvgIcons.hamburgerLight,
                btnColor: AppColors.primaryColor,
              ),
              const Text('Withdraw'),
              const MediumActionBtn(
                text: 'Withdraw',
                icon: Icon(
                  Icons.arrow_upward,
                  color: AppColors.color,
                ),
                btnColor: AppColors.primaryColor,
              ),
              const Text('Total'),
              TotalCardOne(totalNum: '12', width: width * .9, height: height * .2,),
              const Text('Total 2'),
              TotalCardTwo(totalNum: '12', width: width * .9, height: height * .2,),
              SizedBox(height: height * .02),
            ],
          ),
        ),
      ),
    );
  }
}
