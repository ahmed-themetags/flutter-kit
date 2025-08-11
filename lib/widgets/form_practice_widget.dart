import 'package:flutter/material.dart';

class FormPracticeWidget extends StatefulWidget {
  const FormPracticeWidget({super.key});

  @override
  State<FormPracticeWidget> createState() => _FormPracticeWidgetState();
}

class _FormPracticeWidgetState extends State<FormPracticeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20),
      // color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
             Card(
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                 child: Column(
                   children: [
                     SizedBox(height: 10),

                     Text("Form Practice", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                     SizedBox(height: 20),

                     Form(
                       child: Column(
                         children: [
                           TextFormField(
                             decoration: const InputDecoration(
                               border: OutlineInputBorder(),
                               labelText: 'Enter your name',
                             ),
                           ),
                           SizedBox(height: 20),

                           TextFormField(
                             decoration: const InputDecoration(
                               border: OutlineInputBorder(),
                               labelText: 'Enter your email',
                             ),
                           ),
                           SizedBox(height: 20),

                           TextFormField(
                             decoration: const InputDecoration(
                               border: OutlineInputBorder(),
                               labelText: 'Enter your Phone Number',
                             ),
                           ),
                         ],
                       ),
                     ),

                     SizedBox(height: 20),

                     ElevatedButton(
                       onPressed: () {
                         // Your submit logic here
                         print('Submit button pressed');
                       },
                       child: const Text('Submit',
                         style: TextStyle(
                           color: Colors.green,
                           fontSize: 16,
                           fontWeight: FontWeight.bold,),
                       ),
                     ),
                   ],
                 ),
               ),
             )
          ],
        ),
      ),
    );
  }
}
