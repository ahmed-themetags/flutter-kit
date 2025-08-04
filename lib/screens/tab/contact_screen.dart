import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
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
      }      
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

