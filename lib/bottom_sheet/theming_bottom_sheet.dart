import 'package:flutter/material.dart';
import 'package:islami_app/My_theme_data.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("light",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.theme == ThemeMode.light
                            ? MyThemeData.lightPrimary
                            : const Color(0xFFF8F8F8))),
                provider.theme == ThemeMode.light
                    ? const Icon(
                        Icons.done,
                        color: MyThemeData.lightPrimary,
                        size: 25,
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("dark",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.theme == ThemeMode.dark
                            ? MyThemeData.darkPrimary
                            : Colors.black)),
                provider.theme == ThemeMode.dark
                    ? const Icon(
                        Icons.done,
                        color: MyThemeData.darkPrimary,
                        size: 25,
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
