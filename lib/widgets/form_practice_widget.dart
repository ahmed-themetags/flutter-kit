import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // <-- make sure to import this for inputFormatters

class FormPracticeWidget extends StatefulWidget {
  const FormPracticeWidget({super.key});

  @override
  State<FormPracticeWidget> createState() => _FormPracticeWidgetState();
}

class _FormPracticeWidgetState extends State<FormPracticeWidget> {
  final _formKey = GlobalKey<FormState>();
  String? _name; // variable to store input value
  String? _email;
  String? _phone;
  String? _gender; // variable to store input value for gender;
  bool _acceptTerms = false;

  // Change this to a list of maps to store multiple entries
  final List<Map<String, String?>> _formValues = [
    {
      'name': 'Ahmed Ullah',
      'email': 'ahmedullah@test.com',
      'phone': '01840 149651',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Wrapped in Scaffold for proper UI
      // appBar: AppBar(title: const Text("Contact Form")),
      backgroundColor: Colors.blueAccent,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    children: [
                      const SizedBox(height: 5),
                      const Text(
                        "Add Contact",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),

                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter name',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                              onSaved: (value) => _name = value,
                            ),

                            const SizedBox(height: 20),

                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter your email',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                return null;
                              },
                              onSaved: (value) => _email = value,
                            ),


                            const SizedBox(height: 20),

                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter Phone Number',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your phone number';
                                }
                                return null;
                              },
                              onSaved: (value) => _phone = value,
                              keyboardType: TextInputType.number,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly], // allows digits only input
                            ),

                            // Checkbox for Accept Terms
                            CheckboxListTile(
                              title: const Text('Accept Terms and Conditions'),
                              value: _acceptTerms,
                              onChanged: (bool? value) {
                                setState(() {
                                  _acceptTerms = value ?? false;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                            ),

                            Text(_acceptTerms ? 'Accepted' : 'Not Accepted'),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _formKey.currentState!.save();

                            setState(() {
                              // Add the entry as a Map (no casting!)
                              _formValues.add({
                                'name': _name,
                                'email': _email,
                                'phone': _phone,
                              });
                            });

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Hello, $_name!')),
                            );

                            // Clear form fields after submit
                            _formKey.currentState!.reset();
                          }
                        },
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),


                      const SizedBox(height: 20),


                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      const Text(
                        "Contact List",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: _formValues.length,
                        itemBuilder: (context, index) {
                          // final entry = _formValues[index];
                          final reversedIndex = _formValues.length - 1 - index;
                          final entry = _formValues[reversedIndex];
                          return ListTile(
                            title: Text(entry['name'] ?? ''),
                            subtitle: Text(entry['email'] ?? ''),
                            trailing: Text(entry['phone'] ?? ''),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
