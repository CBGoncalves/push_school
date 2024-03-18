import 'package:flutter/material.dart';

class RailMenu extends StatefulWidget {
  const RailMenu({super.key});

  @override
  State<RailMenu> createState() => _RailMenuState();
}

class _RailMenuState extends State<RailMenu> {
  NavigationRailLabelType labelType = NavigationRailLabelType.selected;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NavigationRail(
          minWidth: 56,
          onDestinationSelected: ((value) {
            setState(() {
              _selectedIndex = value;
            });
          }),
          groupAlignment: 0.0,
          leading: Column(children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle),
              enableFeedback: true,
            ),
          ]),
          destinations: [
            NavigationRailDestination(
              icon: Image.asset(
                'assets/img/logo_push_branca.png',
                width: 35,
                color: const Color.fromARGB(255, 158, 161, 165),
              ),
              selectedIcon: Image.asset(
                'assets/img/logo_push_branca.png',
                width: 35,
                color: Theme.of(context).primaryColor,
              ),
              label: const Text('Home'),
            ),
            const NavigationRailDestination(
              icon: Icon(Icons.subscriptions),
              label: Text('Cursos'),
            ),
            const NavigationRailDestination(
              icon: Icon(Icons.forum),
              label: Text('Fóruns'),
            ),
            const NavigationRailDestination(
                icon: Icon(Icons.settings), label: Text('Configurações'))
          ],
          selectedIndex: _selectedIndex,
          labelType: labelType,
        ),
        const VerticalDivider(
          thickness: 1,
          width: 1,
        ),
      ],
    );
  }
}
