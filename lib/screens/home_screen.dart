import 'package:flutter/material.dart';
import 'package:ra7al/widgets/CardList.dart';

import '../widgets/Card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 100),
     appBar:AppBar(
       centerTitle: true,
       elevation:0,
       backgroundColor: Colors.transparent,
       title: Container(
           decoration: BoxDecoration(
             color: Colors.transparent,

           ),
           child:Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               //Image.asset('name'),
               Text('R A H H A L',
               style: TextStyle(
                   fontSize: 40,
                 fontFamily:'raleway',

               ),),
             ],
           ),
       // width: 80,
       // height: 80,
       ),

     ) ,
      body:CardList(),




      
    );
  }
}
