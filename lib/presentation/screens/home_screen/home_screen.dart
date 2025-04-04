import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/presentation/localization/localization_plug.dart';
import 'package:rick_and_morty_app/presentation/navigation/app_router.gr.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, _) => AppBar(title: Text(LocalizationPlug.appTitle)),
      routes: [CharacterListRoute(), SettingsRoute()],
      bottomNavigationBuilder: (_, router) {
        return BottomNavigationBar(
          currentIndex: router.activeIndex,
          onTap: router.setActiveIndex,
          items: [
            BottomNavigationBarItem(
              label: LocalizationPlug.charactersTabLabel,
              icon: Icon(Icons.list),
            ),
            BottomNavigationBarItem(
              label: LocalizationPlug.settingsTabLabel,
              icon: Icon(Icons.settings),
            ),
          ],
        );
      },
    );
  }
}
