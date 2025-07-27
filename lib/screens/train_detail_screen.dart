import 'package:flutter/material.dart';
import 'package:my_flutter_app/providers/favorites_provider.dart';
import '../models/train.dart';

class TrainDetailScreen extends StatelessWidget {
  final Train train;

  const TrainDetailScreen({super.key, required this.train});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200, // Choose your color here
      appBar: AppBar(title: Text(train.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Route: ${train.from} → ${train.to}', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Departure: ${train.departureTime}', style: TextStyle(fontSize: 16)),
            Text('Arrival: ${train.arrivalTime}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text('Stops:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...train.stops.map((stop) => ListTile(title: Text(stop))).toList(),
          ],
        ),
      ),
    );
  }
}
