import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  static const String routeName = "SebhaTab";

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> tasbehat = ["الحمدلله", "الله اكبر", "سبحان الله"];

  String tasbeh = "سبحان الله";
  int tasbehcount = 0;
  int tasbehIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 50),
          Stack(
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 95),
                  child: Image.asset("assets/images/head_sebha_dark.png")),
              Container(
                  margin: const EdgeInsets.only(top: 70),
                  child: InkWell(
                      onTap: () {
                        addTesbehat(tasbehIndex);
                      },
                      child: Image.asset("assets/images/body_sebha_dark.png"))),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text("عدد التسبيحات",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 30)),
          const SizedBox(
            height: 30,
          ),
          Text("$tasbehcount",
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 30)),
          const SizedBox(
            height: 30,
          ),
          Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                "$tasbeh",
                style: const TextStyle(
                  color: Color(0xFF242424),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ],
      ),
    );
  }

  void addTesbehat(index) {
    tasbehcount++;
    if (tasbehcount == 33) {
      tasbeh = tasbehat[index];
      tasbehcount = 0;
      tasbehIndex++;
    }
    if (tasbehcount == 'الحمدلله') {
      tasbehIndex = 0;
    }
    setState(() {});
  }
}
