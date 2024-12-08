import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  String _str = '';
  final _ctrlEmail = TextEditingController();
  final _ctrlPwd = TextEditingController();
  final _ctrlName = TextEditingController();

  TextStyle textStyle() => const TextStyle(
        color: Colors.indigo,
        fontSize: 20,
        fontWeight: FontWeight.normal,
      );

  OutlineInputBorder outlineBorder() => const OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 2));

  void updateText() => setState(() {
        _str = 'Email: ${_ctrlEmail.value.text}\n';
        //เพิ่มประโยค เชื่อม _str ด้วย _str ก่อนหน้า
        _str += 'Password: ${_ctrlPwd.value.text}\n';
        _str += 'Name: ${_ctrlName.value.text}\n';
      });

  Widget textFieldEmail() => TextField(
        controller: _ctrlEmail,
        decoration: InputDecoration(border: outlineBorder(), hintText: 'Email'),
        keyboardType: TextInputType.emailAddress,
        style: textStyle(),
        onChanged: (text) => updateText(),
      );

  Widget textFieldName() => TextField(
        controller: _ctrlName,
        decoration: InputDecoration(border: outlineBorder(), hintText: 'Name'),
        style: textStyle(),
        onChanged: (text) => updateText(),
      );
  Widget textFieldPwd() => TextField(
        controller: _ctrlPwd,
        decoration: InputDecoration(border: outlineBorder(), hintText: 'Password'),
        obscureText: true,
        style: textStyle(),
        onChanged: (text) => updateText(),
      );
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: const Text('Test TextField')),
      body: Center(
        child: SizedBox(
            width: 350,
            child: Column(
              children: [
                const SizedBox( height: 30,),
                textFieldEmail(),
                const SizedBox( height: 30,),
                textFieldPwd(),
                const SizedBox(height: 30,),
                textFieldName(),
                const SizedBox(height: 30,),
                Text(_str)
              ],
            )),
      ));
}
