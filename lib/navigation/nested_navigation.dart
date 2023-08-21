import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:network_provider_test/navigation/tab_bar.dart';

// Stateful navigation based on:
// https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
class NestedNavigation extends StatelessWidget {
  const NestedNavigation({
    Key? key,
    required this.navigationShell,
    required this.destinations,
  }) : super(key: key ?? const ValueKey<String>('NestedNavigationKey'));

  final StatefulNavigationShell navigationShell;
  final List<Widget> destinations;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return TabBar(
        body: navigationShell,
        selectedIndex: navigationShell.currentIndex,
        destinations: destinations,
        onDestinationSelected: _goBranch,
      );
    });
  }
}
