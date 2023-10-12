import 'package:flutter/material.dart';
import 'package:islami_app/My_theme_data.dart';

class RadioTab extends StatelessWidget {
  static const String routeName = "RadioTab";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Image.asset("assets/images/old-radio.png"),
          SizedBox(
            height: 50,
          ),
          Text(
            "اذاعة القرأن الكريم",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.skip_previous,
                  color: MyThemeData.darkPrimary, size: 50),
              Icon(Icons.play_arrow_rounded,
                  color: MyThemeData.darkPrimary, size: 70),
              Icon(Icons.skip_next, color: MyThemeData.darkPrimary, size: 50),
            ],
          )
        ],
      ),
    );
  }
}
