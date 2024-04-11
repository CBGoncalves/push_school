import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pushschool/screens/home/bloc/home_bloc.dart';

class RailMenu extends StatefulWidget {
  final int? selectedDrawerIndex;

  const RailMenu({required this.selectedDrawerIndex, super.key});

  @override
  State<RailMenu> createState() => _RailMenuState();
}

class _RailMenuState extends State<RailMenu> {
  NavigationRailLabelType labelType = NavigationRailLabelType.selected;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NavigationRail(
          minWidth: 56,
          onDestinationSelected: (selectedDrawerIndex) =>
              updateRoute(selectedDrawerIndex),
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
          selectedIndex: widget.selectedDrawerIndex,
          labelType: labelType,
        ),
        const VerticalDivider(
          thickness: 1,
          width: 1,
        ),
      ],
    );
  }

  updateRoute(selectedDrawerIndex) {
    switch (selectedDrawerIndex) {
      case 0:
        BlocProvider.of<HomeBloc>(context).add(HomeInitialized());
        break;
      case 1:
        BlocProvider.of<HomeBloc>(context).add(CoursesScreenInitialized());
        break;
      case 2:
        context.push('/home');
        break;
      case 3:
        context.push('/home');
        break;
    }
  }
}
