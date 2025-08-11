import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/ecommerce_home.dart';
import 'package:my_flutter_app/screens/tab/contact_screen.dart';
import 'package:my_flutter_app/screens/tab/form_tab_screen.dart';
import 'package:my_flutter_app/screens/ui/formScreen.dart';
import 'package:my_flutter_app/widgets/blog_list_widget.dart';
import 'package:my_flutter_app/widgets/drawer_widget.dart';
import 'package:my_flutter_app/widgets/home_body_screen.dart';
import 'package:my_flutter_app/widgets/navigation_bar_widget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:my_flutter_app/widgets/tab_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeOneBody(),
    BlogListWidget(),
    Container(
      color: Colors.orange[400],
      child: Center(
        child: TabBarWidget(),
      ),
    ),
    Container(
      color: Colors.blue,
      child: ContactScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80, // 👈 Increase height (default is 56.0)
          backgroundColor: Colors.black,
          title: Column(
            children: [
              const SizedBox(height: 10),
              const Text(
                'Flutter UI Kids',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'See, Learn & Implement to your project',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        drawer: const DrawerWidget(),
        body: _pages[_currentIndex],
        // bottomNavigationBar: const NavigationBarWidget(),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blueAccent,
          height: 60,
          // buttonBackgroundColor: Colors.orange, // 🔴 Active icon background color
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.article, size: 30),
            // Icon(Icons.tab_sharp, size: 30),
            Text("Tab", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Icon(Icons.person, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
