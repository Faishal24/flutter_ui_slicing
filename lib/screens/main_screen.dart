import 'package:flutter/material.dart';
import './account_screen.dart';
import "./home_screen.dart";
import 'package:provider/provider.dart';
import 'package:flutter_tugas_2/provider/navigation_model.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // Daftar halaman yang akan ditampilkan
  static final List<Widget> _pages = <Widget>[
    HomeScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final navigationModel = Provider.of<NavigationModel>(context);

    return Scaffold(
      body: _pages[navigationModel.selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          if (index == 2) {
            Navigator.pushReplacementNamed(context, '/login');
          } else {
            navigationModel.setSelectedIndex(index); // Ubah index melalui model
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: navigationModel.selectedIndex == 0
                ? Icon(Icons.home)
                : Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: navigationModel.selectedIndex == 1
                ? Icon(Icons.account_circle)
                : Icon(Icons.account_circle_outlined),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
      ),
    );
  }
}
