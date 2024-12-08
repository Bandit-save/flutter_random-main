import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  num value1 = 15, value2 = 25;
  String _txt = '';

  void btnPressed({String op=''}){
    setState(() {
      num output = 0;
      if (op == '+'){
        output = value1 + value2;
        _txt = '$value1 + $value2 = $output';
      } else if(op == '-'){
        output = value1 - value2;
        _txt = '$value1 - $value2 = $output';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Test Button')),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 15),
            Text(_txt),   //เชื่อมโยงข้อมูลสถานะกับวิดเจ็ต Text
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () => btnPressed(op: '+'),
                child: Text('$value1 + $value2')
                ),
            const SizedBox(height: 15),
            ElevatedButton(
                onPressed: () => btnPressed(op: '-'),
                child: Text('$value1 - $value2')
                ),
          ],
        ),
      ),
    );
  }
}
