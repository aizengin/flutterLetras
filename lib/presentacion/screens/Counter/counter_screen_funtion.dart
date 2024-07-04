import 'package:flutter/material.dart';

class CounterFuntionsScreen extends StatefulWidget {

  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}

class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {

  int clickCounter =0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Counter Functions'),
        centerTitle: true,
        actions: [
        IconButton(
        icon: const Icon(Icons.refresh_rounded), 
        onPressed: () {  
            setState(() {  //refresh
              clickCounter=0;
            });
        },),
        ],
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
floatingActionButton: Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: [
  FloatingActionButton(
  shape: const StadiumBorder(),
  onPressed:(){

    clickCounter=clickCounter+1;
    setState(() {
      
    });
  },
  child: const Icon (Icons.plus_one),
      ),
      const SizedBox(height: 20,),
    FloatingActionButton(
        shape: const StadiumBorder(),
  onPressed:(){

    clickCounter=clickCounter-1;
    setState(() {
      
    });
  },
  child: const Icon (Icons.exposure_minus_1_outlined),
      ),
       const SizedBox(height: 20,),
    FloatingActionButton(
        shape: const StadiumBorder(),
  onPressed:(){

    clickCounter=0;
    setState(() {
      
    });
  },
  child: const Icon (Icons.refresh_outlined),
      ),
],)
    );
  }
}
