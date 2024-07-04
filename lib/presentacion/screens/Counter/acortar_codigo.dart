import 'package:flutter/material.dart';

class AcortarCodigo extends StatefulWidget {

  const AcortarCodigo({super.key});

  @override
  State<AcortarCodigo> createState() => _AcortarCodigoState();
}

class _AcortarCodigoState extends State<AcortarCodigo> {

  int clickCounter =0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Bienvenido'),
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
    CustomButton(
      icon: Icons.plus_one,
      onPressed: (){
      clickCounter=clickCounter+1;
      setState((){});
      },
    ),
      const SizedBox(height: 20,),
    CustomButton(
      icon:Icons.exposure_minus_1,
      onPressed: (){
        if(clickCounter==0)return;
        clickCounter=clickCounter-1;
        setState(() {});        

      },
      ),
       const SizedBox(height: 20,),
    CustomButton(
      icon: Icons.refresh_rounded,
      onPressed: (){
      clickCounter=0;
      setState(() {});
      },
      ),
      ],
      )
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key, 
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      backgroundColor: Colors.green,
      elevation: 10,
      onPressed:onPressed,
      child:  Icon (icon),
      );
  }
}
