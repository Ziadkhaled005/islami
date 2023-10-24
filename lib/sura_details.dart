import 'package:flutter/material.dart';
import 'package:islami_app/My_theme_data.dart';
import 'package:islami_app/providers/Sura_detalis_provider.dart';
import 'package:islami_app/sura_mode.dart';
import 'package:provider/provider.dart';

class suraDetails extends StatefulWidget {
  static const String routeName = "Sura details";

  @override
  State<suraDetails> createState() => _suraDetailsState();
}

class _suraDetailsState extends State<suraDetails> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;

    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvaider()..loadFile(args.index),
      builder: (context, child) {
        var provider = Provider.of<SuraDetailsProvaider>(context);
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill),
          ),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                args.name,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            body: Card(
              color: Colors.white,
              elevation: 1,
              margin: const EdgeInsets.all(15),
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.white)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(
                      thickness: 1,
                      endIndent: 40,
                      indent: 40,
                      color: MyThemeData.darkPrimary),
                  itemBuilder: (context, index) {
                    return Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          provider.verses[index],
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.black),
                        ));
                  },
                  itemCount: provider.verses.length,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
