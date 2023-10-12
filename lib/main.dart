import 'package:flutter/material.dart';
import 'package:islami_app/hadeth_details.dart';
import 'package:islami_app/sura_details.dart';
import 'package:islami_app/tabs/ahadeth_tab.dart';
import 'package:islami_app/tabs/quran_tab.dart';
import 'package:islami_app/tabs/radio_tab.dart';
import 'package:islami_app/tabs/settings_tab.dart';

import 'Home_screen.dart';
import 'My_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        QuranTab.routeName: (context) => QuranTab(),
        AhadethTab.routeName: (context) => AhadethTab(),
        RadioTab.routeName: (context) => RadioTab(),
        SettingsTab.routeName: (context) => SettingsTab(),
        suraDetails.routeName: (context) => suraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
