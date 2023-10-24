import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class LangBottomSheet extends StatelessWidget {
  const LangBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLnaguage("en");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.english,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.local == "en"
                            ? Theme.of(context).colorScheme.background
                            : Theme.of(context).colorScheme.onPrimary)),
                provider.local == "en"
                    ? Icon(
                        Icons.done,
                        color: Theme.of(context).colorScheme.background,
                        size: 25,
                      )
                    : SizedBox.shrink()
              ],
            ),
          ),
          InkWell(
            onTap: () {
              provider.changeLnaguage("ar");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.local == "ar"
                            ? Theme.of(context).colorScheme.background
                            : Theme.of(context).colorScheme.onPrimary)),
                provider.local == "ar"
                    ? Icon(
                        Icons.done,
                        color: Theme.of(context).colorScheme.background,
                        size: 25,
                      )
                    : SizedBox.shrink()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
