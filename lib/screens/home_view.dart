import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/CardList.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
              Image.asset('assets/images/horas.png',width: 40,height: 40,),
              Text('R A H H A L',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily:'raleway',
                  color: Colors.white,

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
