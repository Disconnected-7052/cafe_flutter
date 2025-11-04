import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio Button Example',
      home: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.lightGreenAccent,
            child: RadioBubble(options: ["Laki-Laki","Perempuan"]),
          ),
          SizedBox(height: 5,),
          Container(
            color: Colors.lime,
          ),
          SizedBox(height: 5,),
          Container(
            color: Colors.lightBlueAccent,
          )
        ],
      ),
    );
  }
}

class RadioBubble extends StatefulWidget {
  final List<String> options;
  const RadioBubble({super.key, required this.options});

  @override
  State<RadioBubble> createState() => _RadioBubbleState();
}

class _RadioBubbleState extends State<RadioBubble> {
  String? selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dynamic Radio")),
      body: Column(
        children: widget.options
            .map((opt) =>
            RadioListTile<String>(
              title: Text(opt),
              value: opt,
              groupValue: selected,
              onChanged: (v) => setState(() => selected = v),
            ))
            .toList(),
      ),
    );
  }
}