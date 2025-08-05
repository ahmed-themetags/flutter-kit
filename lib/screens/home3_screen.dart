import 'package:flutter/material.dart';

// riverpod crud
// https://chatgpt.com/share/6891d6b8-71e4-800f-9780-a7b21d5b1636

class StatefulPlaygroundApp extends StatelessWidget {
  const StatefulPlaygroundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful Widget Playground',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: PlaygroundHome(),
    );
  }
}

class PlaygroundHome extends StatefulWidget {
  const PlaygroundHome({super.key});

  @override
  _PlaygroundHomeState createState() => _PlaygroundHomeState();
}

class _PlaygroundHomeState extends State<PlaygroundHome> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    CounterExample(),
    ToggleExample(),
    TextInputExample(),
    ColorSliderExample(),
    AnimatedBoxExample(),
  ];

  static const List<String> _titles = [
    'Counter',
    'Toggle Switch',
    'Text Input',
    'Color Slider',
    'Animated Box',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget Playground - ${_titles[_selectedIndex]}'),
        centerTitle: true,
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Counter'),
          BottomNavigationBarItem(icon: Icon(Icons.toggle_on), label: 'Toggle'),
          BottomNavigationBarItem(icon: Icon(Icons.text_fields), label: 'Text'),
          BottomNavigationBarItem(icon: Icon(Icons.color_lens), label: 'Color'),
          BottomNavigationBarItem(icon: Icon(Icons.animation), label: 'Animate'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

// Counter Example
class CounterExample extends StatefulWidget {
  const CounterExample({Key? key}) : super(key: key);

  @override
  _CounterExampleState createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  int _counter = 0;

  void _increment() => setState(() => _counter++);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Count:', style: TextStyle(fontSize: 24)),
        Text('$_counter', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        ElevatedButton(onPressed: _increment, child: Text('Increment')),
      ],
    );
  }
}

// Toggle Switch Example
class ToggleExample extends StatefulWidget {
  const ToggleExample({Key? key}) : super(key: key);

  @override
  _ToggleExampleState createState() => _ToggleExampleState();
}

class _ToggleExampleState extends State<ToggleExample> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(_isOn ? 'Switch is ON' : 'Switch is OFF', style: TextStyle(fontSize: 24)),
      value: _isOn,
      onChanged: (val) => setState(() => _isOn = val),
    );
  }
}

// Text Input Example
class TextInputExample extends StatefulWidget {
  const TextInputExample({Key? key}) : super(key: key);

  @override
  _TextInputExampleState createState() => _TextInputExampleState();
}

class _TextInputExampleState extends State<TextInputExample> {
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onChanged: (val) => setState(() => _text = val),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Type something...',
            ),
          ),
          SizedBox(height: 20),
          Text('You typed:', style: TextStyle(fontSize: 20)),
          Text(_text, style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}

// Color Slider Example
class ColorSliderExample extends StatefulWidget {
  const ColorSliderExample({Key? key}) : super(key: key);

  @override
  _ColorSliderExampleState createState() => _ColorSliderExampleState();
}

class _ColorSliderExampleState extends State<ColorSliderExample> {
  double red = 100;
  double green = 100;
  double blue = 100;

  @override
  Widget build(BuildContext context) {
    Color color = Color.fromRGBO(red.toInt(), green.toInt(), blue.toInt(), 1);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 150, width: 150, color: color),
          SizedBox(height: 20),
          Slider(
            value: red,
            max: 255,
            activeColor: Colors.red,
            label: 'Red',
            onChanged: (val) => setState(() => red = val),
          ),
          Slider(
            value: green,
            max: 255,
            activeColor: Colors.green,
            label: 'Green',
            onChanged: (val) => setState(() => green = val),
          ),
          Slider(
            value: blue,
            max: 255,
            activeColor: Colors.blue,
            label: 'Blue',
            onChanged: (val) => setState(() => blue = val),
          ),
        ],
      ),
    );
  }
}

// Animated Box Example
class AnimatedBoxExample extends StatefulWidget {
  const AnimatedBoxExample({Key? key}) : super(key: key);

  @override
  _AnimatedBoxExampleState createState() => _AnimatedBoxExampleState();
}

class _AnimatedBoxExampleState extends State<AnimatedBoxExample> {
  double _size = 100;

  void _toggleSize() {
    setState(() {
      _size = _size == 100 ? 200 : 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _toggleSize,
        child: AnimatedContainer(
          width: _size,
          height: _size,
          duration: Duration(milliseconds: 400),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(16),
          ),
          alignment: Alignment.center,
          child: Text('Tap Me', style: TextStyle(color: Colors.white, fontSize: 20)),
        ),
      ),
    );
  }
}

