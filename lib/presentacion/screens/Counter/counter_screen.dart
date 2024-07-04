import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int clickCounter =0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Bienvenido'),
        centerTitle: true,
      ),
        body:   Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center ,   //aplicar cambios
            children: [
              Text('$clickCounter', 
              style:const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
               Text('Click${clickCounter==1? '':'s'}', style: const TextStyle(fontSize: 25),) 

               //if(clickCounter ==1)
               //const Text('Click',style: TextStyle(fontSiz:25)),
              //if(clickCounter !==1)
               //const Text('Click',style: TextStyle(fontSiz:25)),
          
            ],
                    ),
        ),
floatingActionButton: FloatingActionButton(
  onPressed:(){

    clickCounter=clickCounter+1;
    setState(() {
      
    });
  },
  child: const Icon (Icons.plus_one),
      ),
    );
  }
}

