import 'package:flutter/material.dart';
import 'package:my_flutter_app/data/categories.dart';
import 'package:my_flutter_app/data/dummy_books.dart';
import 'package:my_flutter_app/widgets/book_card.dart';
import '../data/dummy_trains.dart';
import '../widgets/train_card.dart';
import 'train_detail_screen.dart';
import 'cu_history_screen.dart';
import 'education_info_screen.dart';

class TrainListScreen extends StatelessWidget {
  const TrainListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CU Train Schedule')),
      backgroundColor: Colors.green.shade200,
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
    );
  }
}
