import 'package:my_flutter_app/providers/favorites_provider.dart';

import '../models/train.dart';

final List<Train> dummyTrains = [
  Train(
    name: 'CU Express',
    from: 'Chittagong',
    to: 'Dhaka',
    departureTime: '08:00 AM',
    arrivalTime: '02:00 PM',
    stops: ['Feni', 'Comilla', 'Brahmanbaria'],
  ),
  Train(
    name: 'Local Train',
    from: 'Chittagong',
    to: 'Cox\'s Bazar',
    departureTime: '06:30 AM',
    arrivalTime: '11:00 AM',
    stops: ['Fatikchhari', 'Rangamati', 'Ukhiya'],
  ),
];
