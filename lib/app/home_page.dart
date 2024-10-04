import 'package:desafio_enem/app/list_provas/list_provas_page.dart';
import 'package:desafio_enem/app/settings_page.dart';
import 'package:desafio_enem/layouts/scaffold_base.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 1: HomePage',
      style: optionStyle,
    ),
    ListProvasPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldBase(
      title: 'Página Inicial',
      hasDrawer: false,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber[800],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Página inicial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search),
            label: 'Provas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
      ),
    );
  }
}
