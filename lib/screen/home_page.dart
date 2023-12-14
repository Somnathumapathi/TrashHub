import 'package:eco_hub/screen/ecoperks_screen.dart';
import 'package:eco_hub/screen/home_screen.dart';
import 'package:eco_hub/screen/recycle_hub.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<String> _title = ['Home', 'Ecoperks', 'RecycleHub'];
  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _navScreens = const [
    HomeScreen(),
    EcoperksScreen(),
    RecycleHubPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title[_selectedIndex]),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _navScreens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home), label: _title[0]),
          BottomNavigationBarItem(
              icon: const Icon(Icons.qr_code), label: _title[1]),
          BottomNavigationBarItem(
              icon: const Icon(Icons.pin_drop), label: _title[2]),
        ],
      ),
    );
  }
}
