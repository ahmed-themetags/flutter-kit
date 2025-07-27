import 'package:flutter/material.dart';
import 'package:my_flutter_app/providers/favorites_provider.dart';
import '../models/train.dart';

class TrainCard extends StatelessWidget {
  final Train train;
  final VoidCallback onTap;

  const TrainCard({super.key, required this.train, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        title: Text(train.name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('${train.from} → ${train.to}'),
        trailing: Text(train.departureTime),
        onTap: onTap,
      ),
    );
  }
}
