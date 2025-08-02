import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/categories.dart';
import 'package:my_flutter_app/data/dummy_books.dart';
import 'package:my_flutter_app/screens/blog_list_screen.dart';
import 'package:my_flutter_app/screens/ecommerce_home.dart';
import 'package:my_flutter_app/screens/home_screen.dart';
import 'package:my_flutter_app/screens/products_screen.dart';
import 'package:my_flutter_app/screens/tabbar_screen.dart';
import 'package:my_flutter_app/widgets/book_card.dart';
import '../data/dummy_trains.dart';
import '../widgets/train_card.dart';
import 'train_detail_screen.dart';
import 'cu_history_screen.dart';
import 'education_info_screen.dart';

class Home2Screen extends StatelessWidget {
  const Home2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CU Train Schedule')),
      backgroundColor: Colors.grey.shade200,
      drawer: Drawer(
        backgroundColor: Colors.green.shade200,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Text(
                'CU Train App Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
                leading: Icon(Icons.home),
                title: Text('Flutter UI Kids'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => HomeScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.add_chart_sharp),
              title: Text('Ecommerce Site'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => EcommerceHome()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.train),
              title: Text('Train Schedule'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.history_edu),
              title: Text('CU History'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CUHistoryScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Education Info'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => EducationInfoScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('Blog List'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LudoGameApp()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.tab),
              title: Text('Tab Bar Example'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => TabBarScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Horizontal scrollable categories
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: categories.map((category) {
                  return Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Card(
                      color: Colors.teal,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        child: Text(
                          category,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),

            SizedBox(height: 10),

            // 🔹 Train List
            ...List.generate(dummyTrains.length, (i) {
              final train = dummyTrains[i];
              return TrainCard(
                train: train,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TrainDetailScreen(train: train),
                    ),
                  );
                },
              );
            }),

            SizedBox(height: 20),

            // 🔹 Book Section Title
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Recommended Books",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            // 🔹 Book Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: dummyBooks.map((book) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width / 3 - 15,
                    child: BookCard(book: book),
                  );
                }).toList(),
              ),
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Product List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_tree_sharp),
            label: 'Table',
          ),
        ],
      ),
    );
  }
}