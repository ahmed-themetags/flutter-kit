import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home_screen.dart';
import 'package:my_flutter_app/screens/ui/contact_screen.dart';
import 'package:my_flutter_app/widgets/drawer_widget.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Center(
        child: Text('Drawer Screen'),
      ),

      drawer: DrawerWidget()
    );
  }
}
