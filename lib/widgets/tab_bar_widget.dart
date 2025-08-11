import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/form_practice_widget.dart';


class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(
            child: const Text('Flutter TabBar Example'),
          ),
          backgroundColor: Colors.white,
          bottom: const TabBar(
            labelColor: Colors.green,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.input_rounded), text: "Form Practice"),
              Tab(icon: Icon(Icons.search), text: "Search"),
              Tab(icon: Icon(Icons.person), text: "Profile"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            FormPracticeWidget(),
            Center(child: Text('🔍 Search Page', style: TextStyle(fontSize: 22))),
            Center(child: Text('👤 Profile Page', style: TextStyle(fontSize: 22))),
          ],
        ),
      ),
    );
  }
}