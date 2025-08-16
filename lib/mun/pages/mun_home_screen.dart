import 'package:flutter/material.dart';
import 'package:my_flutter_app/mun/pages/favourite_cart_screen.dart';
import 'package:my_flutter_app/mun/widgets/mun_home_widget.dart';

class MunHomeScreen extends StatefulWidget {
  const MunHomeScreen({super.key});

  @override
  State<MunHomeScreen> createState() => _MunHomeScreenState();
}

class _MunHomeScreenState extends State<MunHomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    MunHomeWidget(),
    const Text('Profile'),
    FavouriteCartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: Colors.grey[200],
          selectedItemColor: Colors.purple,   // Selected label + icon color
          unselectedItemColor: Colors.black ,   // Unselected label + icon color
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.purple),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.purple),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Icon(Icons.favorite, color: Colors.purple),
                  // Badge counter
                  Positioned(
                    right: -10,
                    top: -10,
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        "15", // 🔥 Replace with your dynamic favorites count
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              label: 'Favorites',
            ),
          ],
      ),
    );
  }
}
