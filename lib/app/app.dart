import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:task_manager_app/presentation/screens/home_screen.dart';
import 'package:task_manager_app/presentation/screens/profile_screen.dart';
import 'package:task_manager_app/presentation/screens/task_list_screen.dart';

class App extends HookWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final pageIndex = useState(0);

    return Scaffold(
      body: IndexedStack(
        index: pageIndex.value,
        children: const [
          HomeScreen(),
          TaskListScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Semantics(
        container: true,
        child: NavigationBar(
          selectedIndex: pageIndex.value,
          onDestinationSelected: (index) => pageIndex.value = index,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.task_outlined),
              selectedIcon: Icon(Icons.task),
              label: 'Tasks',
            ),
            NavigationDestination(
              icon: Icon(Icons.person_outlined),
              selectedIcon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
