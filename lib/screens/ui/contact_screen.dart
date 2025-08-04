import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home_screen.dart';
import 'package:my_flutter_app/widgets/navigation_button_card.dart';
import 'package:my_flutter_app/widgets/view_source_code_btn.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Divider(),
                Center(
                  child: const Text(
                    'Contact List With ListView builder',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.green,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),

                const Divider(),

                // Back To UI Kids Button
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NavigationButtonCard(
                        label: 'Back To UI Kids',
                        screen: HomeScreen(),
                        color: Colors.orange,
                        fontSize: 14,
                      ),
                      ViewSourceCodeBtn(),
                    ]
                ),

                Divider(),

                const SizedBox(
                  height: 25,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric( horizontal: 10),
                  child: Text(
                    "When used in ListView.builder inside a Column (or other scrollable widget like SingleChildScrollView), it needs help understanding its height."
                        "For that Need to Wrap it with Expanded or Flexible OR move it out of the Column.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                      height: 1.8,
                      fontSize: 17,
                    ),
                  ),
                ),

               SizedBox(
                 height: 20,
               ),

               ListView.builder(
                   shrinkWrap: true,
                   physics: BouncingScrollPhysics(),
                   itemCount: contacts.length,
                   itemBuilder: (context, index) {
                     return Card(
                       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                       child: ListTile(
                         leading: Icon(Icons.message_rounded, color: Colors.green),
                         title: Text(contacts[index]['name']!),
                         subtitle: Text(contacts[index]['message']!),
                         trailing: Icon(
                           Icons.delete,
                           color: Colors.red,
                         ),
                       ),
                     );
                   },
                 ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}



final List<Map<String, String>> contacts = [
  {
    'name': 'Ahmed Ullah',
    'message': 'Hey! How are you doing today?',
  },
  {
    'name': 'Rashid Ali',
    'message': 'Let\'s catch up tomorrow.',
  },
  {
    'name': 'Maria Gomez',
    'message': 'Meeting has been rescheduled to 3 PM.',
  },
  {
    'name': 'John Carter',
    'message': 'Thanks for your help!',
  },
  {
    'name': 'Emily Stone',
    'message': 'Can you send me the files?',
  },
  {
    'name': 'David Smith',
    'message': 'I\'ll be late to the office.',
  },
  {
    'name': 'Olivia Brown',
    'message': 'Happy birthday! 🎉',
  },
  {
    'name': 'Liam Johnson',
    'message': 'Let\'s play football this weekend.',
  },
  {
    'name': 'Sophia Davis',
    'message': 'I loved the book you recommended!',
  },
  {
    'name': 'Noah Wilson',
    'message': 'Where are you now?',
  },
  {
    'name': 'Isabella Miller',
    'message': 'Please check your email.',
  },
  {
    'name': 'James Anderson',
    'message': 'What’s the plan for today?',
  },
  {
    'name': 'Mia Thomas',
    'message': 'See you at the party!',
  },
  {
    'name': 'Elijah Martin',
    'message': 'Don’t forget our meeting at 10.',
  },
  {
    'name': 'Ava White',
    'message': 'I sent you the payment.',
  },
];
