import 'dart:math';
import 'package:flutter/material.dart';


class WorkRandomPage extends StatefulWidget {
  const WorkRandomPage({super.key});

  @override
  State<WorkRandomPage> createState() => _RandomPageState();
}

class _RandomPageState extends State<WorkRandomPage> {
  var rnd = Random();
  int r = 0;
  String txt = '';
  String _number = '';
  final _ctrl = TextEditingController();
  int x = 0, y = 0 ;
  
  @override
  Widget build(BuildContext context) {
   
    
    return Scaffold(  
        
        appBar: AppBar(title: const Text('Game Random') , backgroundColor: const Color.fromARGB(255, 54, 73, 244),),
        body:
          
          Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            const SizedBox(height: 20),
            
            TextField(
               controller: _ctrl,
               onChanged: (text) => _number = _ctrl.value.text,
               
            ),

            const  SizedBox(height: 15),

            Text(txt),
            // Text(r.toString()),
            // Text(x.toString()),
              
            
            const  SizedBox(height: 15),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
              TextButton(
                onPressed: ()
                  {
                    checkNumber();

                  }, 
                child: const Text('ส่งคำตอบ',style: TextStyle(backgroundColor: Color.fromARGB(255, 243, 21, 32) ,fontSize: 30, color: Colors.black ),)
                ),
                TextButton(
                onPressed: (){
                  setState(() {
                    Random_number();
                    txt = 'เดาตัวเลข 1 - 10';
                  });
                }, 
                child: const Text('เริ่มใหม่',style: TextStyle(backgroundColor: Color.fromARGB(255, 33, 243, 194) ,fontSize: 30, color: Colors.black  ),)
                ),

            ],)
            
          ],),
        ),)
      );
  }
  void checkNumber() {
      txt = 'เดาตัวเลข 1 - 10';
      
      var test = int.parse(_number);
      
      x = test;
   
      if ( r == test) {
        setState(() {
          txt = "ถูกต้อง!";
        });
      } 
      else {
        setState(() {
          txt = "ผิด! คำตอบที่ถูกคือ ${r}";
        });
      }
  }
  
  void Random_number(){
    r = rnd.nextInt(10)+1;
  }
}