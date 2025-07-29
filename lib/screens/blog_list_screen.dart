import 'package:flutter/material.dart';

void main() {
  runApp(LudoGameApp());
}

class LudoGameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ludo Game UI',
      debugShowCheckedModeBanner: false,
      home: LudoBoard(),
    );
  }
}

class LudoBoard extends StatelessWidget {
  final int gridSize = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ludo Board'),
        backgroundColor: Colors.green[800],
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 1,
          child: GridView.builder(
            itemCount: gridSize * gridSize,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: gridSize,
            ),
            itemBuilder: (context, index) {
              int row = index ~/ gridSize;
              int col = index % gridSize;

              Color cellColor = Colors.white;

              if (row < 5 && col < 5) {
                cellColor = Colors.red[300]!; // Red Zone
              } else if (row < 5 && col > 9) {
                cellColor = Colors.green[300]!; // Green Zone
              } else if (row > 9 && col < 5) {
                cellColor = Colors.yellow[300]!; // Yellow Zone
              } else if (row > 9 && col > 9) {
                cellColor = Colors.blue[300]!; // Blue Zone
              } else if (row >= 5 && row <= 9 && col >= 5 && col <= 9) {
                cellColor = Colors.grey[300]!; // Center
              }

              return Container(
                margin: EdgeInsets.all(0.5),
                color: cellColor,
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DiceWidget(),
            PlayerIndicator(playerName: "Player 1", color: Colors.red),
            PlayerIndicator(playerName: "Player 2", color: Colors.green),
          ],
        ),
      ),
    );
  }
}

class DiceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle dice roll
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Dice rolled! (fake)")),
        );
      },
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black),
          color: Colors.white,
        ),
        child: Center(
          child: Text(
            "🎲",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}

class PlayerIndicator extends StatelessWidget {
  final String playerName;
  final Color color;

  const PlayerIndicator({super.key, required this.playerName, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 12,
          backgroundColor: color,
          child: ClipOval(
            child: Image.asset(
              'assets/images/avatar.png',
              fit: BoxFit.cover,
              width: 24,
              height: 24,
            ),
          ),
        ),
        SizedBox(height: 4),
        Text(playerName, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
