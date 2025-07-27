class Train {
  final String name;
  final String from;
  final String to;
  final String departureTime;
  final String arrivalTime;
  final List<String> stops;

  Train({
    required this.name,
    required this.from,
    required this.to,
    required this.departureTime,
    required this.arrivalTime,
    required this.stops,
  });
}
