import 'package:flutter/material.dart';
import 'package:islami_app/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "hadethDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
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
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Directionality(
                    textDirection: TextDirection.rtl,
                    child: Text(
                      "${args.content[index]}",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.black),
                    ));
              },
              itemCount: args.content.length,
            ),
          ),
        ),
      ),
    );
  }
}
