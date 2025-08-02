import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/tab/card_tab_screen.dart';
import 'package:my_flutter_app/screens/tab/contact_screen.dart';
import 'package:my_flutter_app/screens/tab/form_tab_screen.dart';
import 'package:my_flutter_app/screens/tab/profile_tab_screen.dart';
import 'package:my_flutter_app/screens/tab/table_tab_screen.dart';
import 'package:my_flutter_app/screens/tab/text_tab_screen.dart';

class TabBarScreen extends StatelessWidget {
  const TabBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        initialIndex: 1,
        child: Scaffold(
        appBar: AppBar(
          title: Text('Tab bar widget', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: Colors.green.shade600,
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.symmetric(horizontal: 30),
            tabs: [
              Tab(
                icon: Icon(Icons.settings),
                text: 'Contact',
              ),
              Tab(
                icon: Icon(Icons.table_chart),
                text: 'Table',
              ),
              Tab(
                icon: Icon(Icons.account_balance_sharp),
                text: 'Profile',
              ),
              Tab(
                icon: Icon(Icons.account_balance_sharp),
                text: 'Form',
              ),
              Tab(
                icon: Icon(Icons.account_balance_sharp),
                text: 'Text',
              ),
            ],
          ),
        ),

      body: TabBarView(
        children: [
          // contact tab screen
          ContactScreen(),

          //table tab
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.call, size: 100),
              Text('Table', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text('This is table tab', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ),

            ],
          ),

          //Profile tab
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.pageview, size: 100),
              Text('Table', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text('Profile Tab content Coming Soon', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ),

            ],
          ),
          CardTabScreen(),
          TableTabScreen(),
          ProfileTabScreen(),
          FormTabScreen(),
          // TextTabScreen(),


    ],
  ),
));
  }

}