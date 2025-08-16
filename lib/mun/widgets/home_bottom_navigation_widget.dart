import 'package:flutter/material.dart';

class HomeBottomNavigationWidget extends StatefulWidget {
  const HomeBottomNavigationWidget({super.key});
  @override
  State<HomeBottomNavigationWidget> createState() => _HomeBottomNavigationWidgetState();
}

class _HomeBottomNavigationWidgetState extends State<HomeBottomNavigationWidget> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      backgroundColor: Colors.grey[200],
      selectedItemColor: Colors.purple,
      unselectedItemColor: Colors.black,
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            clipBehavior: Clip.none,
            children: [
              const Icon(Icons.favorite),
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
                  child: const Text(
                    "15", // 🔥 Replace with dynamic favorites count
                    style: TextStyle(
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
    );
  }
}
