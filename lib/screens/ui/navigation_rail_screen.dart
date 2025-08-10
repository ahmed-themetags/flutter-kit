import 'package:flutter/material.dart';

class NavigationRailScreen extends StatefulWidget {
  const NavigationRailScreen({super.key});

  @override
  State<NavigationRailScreen> createState() => _NavigationRailScreenState();
}

class _NavigationRailScreenState extends State<NavigationRailScreen>
{
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.yellow,
          padding: const EdgeInsets.all(8),
          child: const Center(child: Text("Home Page", style: TextStyle(fontSize: 24))),
        ),
      ],
    ),

    Center(child: Text("❤️ Favourite Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("⚙ Settings Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("🔍 Search Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("👤 Profile Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("📊 Dashboard Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("🚪 Logout Page", style: TextStyle(fontSize: 24))),
    Center(child: Text("🚪 Logout Page", style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey.shade200,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Navigation Rail'),
      ),
      body: Row(
          children: [
            // Make the navigation rail scrollable
            SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                child: IntrinsicHeight(
                  child: NavigationRail(
                    selectedIndex: _selectedIndex,
                    onDestinationSelected: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    backgroundColor: Colors.blue,
                    selectedIconTheme: IconThemeData(color: Colors.yellow, size: 30),
                    unselectedIconTheme: IconThemeData(color: Colors.white, size: 28),
                    labelType: NavigationRailLabelType.all,
                    leading: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.blue.shade900,
                        child: Text("AHM", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    destinations: const [
                      NavigationRailDestination(icon: Icon(Icons.home), label: Text('Home')),
                      NavigationRailDestination(icon: Icon(Icons.favorite), label: Text('Favorites')),
                      NavigationRailDestination(icon: Icon(Icons.settings), label: Text('Settings')),
                      NavigationRailDestination(icon: Icon(Icons.search), label: Text('Search')),
                      NavigationRailDestination(icon: Icon(Icons.person), label: Text('Profile')),
                      NavigationRailDestination(icon: Icon(Icons.dashboard), label: Text('Dashboard')),
                      NavigationRailDestination(icon: Icon(Icons.settings), label: Text('Settings')),
                      NavigationRailDestination(icon: Icon(Icons.logout), label: Text('Logout')),
                    ],
                  ),
                ),
              ),
            ),

            // Main page area
            Expanded(child: _pages[_selectedIndex]),
          ],
        )

    );

  }
}
