import 'package:flutter/material.dart';
import 'package:my_flutter_app/mun/pages/mun_home_screen.dart';
import 'package:my_flutter_app/screens/home_screen.dart';
import 'package:my_flutter_app/screens/tab/contact_screen.dart';
import 'package:my_flutter_app/screens/ui/ecommerce_screen.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/ahmed.jpeg'),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Ahmed Ullah',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'ahmedsohelcu@gmail.com',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.shop, color: Colors.redAccent),
            ),
            title: Text(
              'Mun',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
                letterSpacing: 0.3,
              ),
            ),
            subtitle: Text(
              'Replica of Mun Ecommerce',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.grey[700],
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[600]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => MunHomeScreen()),
              );
            },
          ),
          Divider(color: Colors.grey[400]),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Icon(Icons.shop, color: Colors.white),
            ),
            title: Text(
              'Ecommerce',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
                letterSpacing: 0.3,
              ),
            ),
            subtitle: Text(
              'Go to Ecommerce Screen',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.grey[700],
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[600]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => EcommerceScreen()),
              );
            },
          ),
          Divider(color: Colors.grey[400]),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue.shade100,
              child: Icon(Icons.home, color: Colors.blue),
            ),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
                letterSpacing: 0.3,
              ),
            ),
            subtitle: Text(
              'Go to Home Screen',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.grey[700],
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[600]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => HomeScreen()),
              );
            },
          ),
          Divider(color: Colors.grey[400]),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue.shade100,
              child: Icon(Icons.phone, color: Colors.blue),
            ),
            title: Text(
              'Contact 2',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
                letterSpacing: 0.3,
              ),
            ),
            subtitle: Text(
              'Go to Contact Screen',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.grey[700],
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[600]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ContactScreen()),
              );
            },
          ),
          Divider(color: Colors.grey[400]),
        ],
      ),
    );
  }
}
