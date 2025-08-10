import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/ecommerce_home.dart';
import 'package:my_flutter_app/screens/home_screen.dart';
import 'package:my_flutter_app/screens/tab/contact_screen.dart';
import 'package:my_flutter_app/screens/ui/appbar_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    ContactScreen(),
    AppbarScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index){
            setState(() => _selectedIndex = index);
          },
          currentIndex: _selectedIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
















//
//
//
// import 'package:flutter/material.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
//
// class NavigationBarBarWidget extends StatefulWidget {
//   const NavigationBarBarWidget({super.key});
//
//   @override
//   State<NavigationBarBarWidget> createState() => _NavigationBarBarWidgetState();
// }
//
// class _NavigationBarBarWidgetState extends State<NavigationBarBarWidget> {
//   int _selectedIndex = 1; // Default to Home page
//
//   final List<Widget> _pages = [
//     Center(child: Text("⚙ Settings Page", style: TextStyle(fontSize: 24))),
//     Center(child: Text("🏠 Home Page", style: TextStyle(fontSize: 24))),
//     Center(child: Text("🔍 Search Page", style: TextStyle(fontSize: 24))),
//     Center(child: Text("👤 Profile Page", style: TextStyle(fontSize: 24))),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_selectedIndex],
//
//       bottomNavigationBar: CurvedNavigationBar(
//         index: _selectedIndex,
//         backgroundColor: Colors.blueAccent,
//         color: Colors.white,
//         buttonBackgroundColor: Colors.orange,
//         animationDuration: Duration(milliseconds: 300),
//         height: 60,
//         items: <Widget>[
//           Icon(Icons.settings,
//               size: 30,
//               color: _selectedIndex == 0 ? Colors.orange : Colors.grey),
//           Icon(Icons.home,
//               size: 30,
//               color: _selectedIndex == 1 ? Colors.orange : Colors.grey),
//           Icon(Icons.search,
//               size: 30,
//               color: _selectedIndex == 2 ? Colors.orange : Colors.grey),
//           Icon(Icons.person,
//               size: 30,
//               color: _selectedIndex == 3 ? Colors.orange : Colors.grey),
//         ],
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }















