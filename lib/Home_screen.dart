import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/tabs/ahadeth_tab.dart';
import 'package:islami_app/tabs/quran_tab.dart';
import 'package:islami_app/tabs/radio_tab.dart';
import 'package:islami_app/tabs/sebha_tab.dart';
import 'package:islami_app/tabs/settings_tab.dart';
import 'package:provider/provider.dart';

import 'My_theme_data.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.theme == ThemeMode.dark
              ? "assets/images/background.png"
              : "assets/images/bg3.png",
          fit: BoxFit.fill,
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.apptitle,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/radio_blue.png")),
                  label: "radio",
                  backgroundColor: provider.theme == ThemeMode.dark
                      ? MyThemeData.darkbg
                      : MyThemeData.lightPrimary),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/sebha_blue.png")),
                  label: "sebha",
                  backgroundColor: provider.theme == ThemeMode.dark
                      ? MyThemeData.darkbg
                      : MyThemeData.lightPrimary),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                  label: "ahadeth",
                  backgroundColor: provider.theme == ThemeMode.dark
                      ? MyThemeData.darkbg
                      : MyThemeData.lightPrimary),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/moshaf_blue.png")),
                  label: "quran",
                  backgroundColor: provider.theme == ThemeMode.dark
                      ? MyThemeData.darkbg
                      : MyThemeData.lightPrimary),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "settings",
                  backgroundColor: provider.theme == ThemeMode.dark
                      ? MyThemeData.darkbg
                      : MyThemeData.lightPrimary)
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget>tabs = [RadioTab(),SebhaTab(),AhadethTab(),QuranTab(),SettingsTab()];
}
