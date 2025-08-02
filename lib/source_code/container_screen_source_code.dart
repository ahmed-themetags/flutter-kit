// lib/source_code.dart

const String containerScreenSourceCode = r"""
import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/home_screen.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              Center(
                child: Text(
                  'Scrollable Row Example',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(),
              Container(
                margin: EdgeInsets.all(5),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Card(
                    color: Colors.orange,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        'Back To UI Kids',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (_) {
                    return Container(
                      width: 100,
                      height: 100,
                      color: Colors.green,
                      margin: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          'Container',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
""";
