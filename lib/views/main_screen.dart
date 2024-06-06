import 'package:flutter/material.dart';
import 'package:rutapp/app/ui/paginas/home/home_page.dart';
import 'package:rutapp/login/login.dart';
import 'package:rutapp/views/home_page_foraneas.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final screen = [const HomePage(), const HomePageForaneas(), const Login()];
    return Scaffold(
      body: IndexedStack(index: selectedIndex, children: screen),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.map_outlined),
              activeIcon: const Icon(Icons.map),
              label: "Tapachula",
              backgroundColor: colors.primary),
          BottomNavigationBarItem(
              icon: const Icon(Icons.location_on_outlined),
              activeIcon: const Icon(Icons.location_on),
              label: "Foraneas",
              backgroundColor: colors.primary),
          BottomNavigationBarItem(
              icon: const Icon(Icons.account_box_outlined),
              activeIcon: const Icon(Icons.account_box_rounded),
              label: "Admins",
              backgroundColor: colors.primary)
        ],
      ),
    );
  }
}
