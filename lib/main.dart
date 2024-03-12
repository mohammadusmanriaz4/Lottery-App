import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget 
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
Random random = Random();
int x = 0;

@override
Widget build(BuildContext context) {
    
return  MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
  backgroundColor: Colors.white,
  appBar: AppBar(
  title: const Center(
  child: Text(
  'Lottery by Luck',
  style: TextStyle(
  fontFamily: 'PlayfairDisplay',
  fontWeight: FontWeight.bold,
  fontSize: 26,
  ),
  ),
  ), 
      
  backgroundColor: Colors.teal,
  ),

body: Column(
  
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  
  children: [

  const Center(
  child:  Text(
  'Lottery winning Number is: 4',
  textAlign: TextAlign.center,
  style: TextStyle(
  fontSize: 22,
  fontFamily: 'PlayfairDisplay',
  fontWeight: FontWeight.bold,
  color: Colors.black,
  ),
  ),
  ),

  const SizedBox(
  height: 20,
  ),
      
      

Container(  
  height: x == 4 ? 400 : 250,
  width: 300,
  
  decoration: BoxDecoration(
  color: x == 4 ? Colors.teal : Colors.lightBlue.withOpacity(.4),
  borderRadius: BorderRadius.circular(10),
  ),
      
child: Padding(
  padding: const EdgeInsets.all(20),
  child: x == 4 ? Column(

  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,

  children: [    
  const  Icon(
  Icons.check_circle, 
  color: Colors.white,
  size: 200,
  ),
      
  const SizedBox(
  height: 15,
  ),
      
  Text(
  'Congratulations! \n You won the lottery \n Your number is: $x.', 
  textAlign: TextAlign.center,
  style: const  TextStyle(
  color: Colors.white,
  fontSize: 18,
  fontWeight: FontWeight.bold,
  ),
  ),
          
  ],
  ) : Column(
  
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  
  children: [
           
  const  Icon(
  Icons.clear, 
  color: Colors.pink,
  size: 100,
  ),
      
          
      
  
  Text(
  'Better luck next time. \n Your number is: $x \n Try Again',
  textAlign: TextAlign.center, 
  style: const TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.bold,
  color: Colors.black,
  ),
  ),
  
  ],
  ),
  ),
  ),
  ],
  ),
        
      
floatingActionButton: FloatingActionButton(
  onPressed: () {
  //random.nextInt(6).toString();
  x = random.nextInt(5);
  print(x);

  setState(() {
          
  });
  } ,
      
  backgroundColor:Colors.teal,
  child: const Icon(
  Icons.refresh_outlined,
  ),
  
  ),
  ),
  );
  }
}