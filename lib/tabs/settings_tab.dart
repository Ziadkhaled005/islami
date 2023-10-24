import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/bottom_sheet/lang_bottom_sheet.dart';
import 'package:islami_app/bottom_sheet/theming_bottom_sheet.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  static const String routeName = "SettingsTab";

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("language"),
          InkWell(
            onTap: () {
              showLangBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.background)),
              child: Text(provider.local == "en"
                  ? AppLocalizations.of(context)!.english
                  : AppLocalizations.of(context)!.arabic),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text("mode"),
          InkWell(
            onTap: () {
              showModeBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12),
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.background)),
              child: Text(provider.theme == ThemeMode.dark ? "dark" : "light"),
            ),
          )
        ],
      ),
    );
  }

  void showModeBottomSheet() {
    showModalBottomSheet(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18)),
          borderSide: BorderSide(color: Colors.transparent)),
      context: context,
      builder: (context) {
        return ThemeBottomSheet();
      },
    );
  }

  void showLangBottomSheet() {
    showModalBottomSheet(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18)),
          borderSide: BorderSide(color: Colors.transparent)),
      context: context,
      builder: (context) {
        return LangBottomSheet();
      },
    );
  }
}
