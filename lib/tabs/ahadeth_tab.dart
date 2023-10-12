import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/My_theme_data.dart';
import 'package:islami_app/hadeth_details.dart';
import 'package:islami_app/hadeth_model.dart';

class AhadethTab extends StatefulWidget {
  static const String routeName = "AhadethTab";

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAahdeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAahdeth.isEmpty) {
      loadHadeth();
    }
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/hadeth_logo.png"),
          Divider(
            thickness: 2,
            color: MyThemeData.darkPrimary,
          ),
          Text("ahadeth"),
          Divider(
            thickness: 2,
            color: MyThemeData.darkPrimary,
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HadethDetails.routeName,
                        arguments: allAahdeth[index]);
                  },
                  child: Text(
                    allAahdeth[index].title,
                    textAlign: TextAlign.center,
                  ));
            },
            itemCount: allAahdeth.length,
          ))
        ],
      ),
    );
  }

  loadHadeth() async {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String> ahadethList = ahadeth.split("#");
      for (int i = 0; i < ahadethList.length; i++) {
        String hadethOne = ahadethList[i];
        List<String> HadethOneLines = hadethOne.trim().split("\n");
        String title = HadethOneLines[0];
        HadethOneLines.removeAt(0);
        List<String> content = HadethOneLines;
        HadethModel hadethModel = HadethModel(title, content);
        allAahdeth.add(hadethModel);
      }
      setState(() {});
    }).catchError((e) {
      print(e.toString());
    });
  }
}
