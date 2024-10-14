import 'package:flutter/material.dart';

class V3 extends StatefulWidget {
  @override
  State<V3> createState() => _V3State();
}

class _V3State extends State<V3> {
  double _red = 20.0;
  double _green = 30.0;
  double _blue = 10.0;

  _onRed(double value) {
    setState(() {
      _red = value;
    });
  }

  _onGreen(double value) {
    setState(() {
      _green = value;
    });
  }

  _onBlue(double value) {
    setState(() {
      _blue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Color currentColor = Color.fromRGBO(_red.round(), _green.round(), _blue.round(), 1);
    return Column(
      children: [
        Row(
          children: [
            const Text("Red: "),
            Text(_red.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(value: _red, min: 0, max: 255, onChanged: _onRed),
        Row(
          children: [
            const Text("Green: "),
            Text(_green.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(value: _green, min: 0, max: 255, onChanged: _onGreen),
        Row(
          children: [
            const Text("Red: "),
            Text(_blue.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
        Slider(value: _blue, min: 0, max: 255, onChanged: _onBlue),

        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: currentColor,
              )
          ),
      ],
    );
  }
}