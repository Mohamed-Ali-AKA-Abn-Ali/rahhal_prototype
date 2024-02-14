
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ra7al/screens/details_screen.dart';
import 'package:ra7al/screens/details_tower.dart';

import '../classes/card_class.dart';
import '../screens/details_tut.dart';
import 'Card.dart';

class CardList extends StatelessWidget {
  CardList({super.key});

  List<cardClass> Cards=[
    cardClass(
        name: 'Pyramids',
        coordinates: '29.977463459065017, 31.13245258056559',
        image: 'https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-of-giza-and%20camels-2.jpg',

    ),
    cardClass(
        name: 'Cairo Tower',
        coordinates: '30.046132956124648, 31.224309524745323',
        image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Cairo_Tower_by_day.jpg/450px-Cairo_Tower_by_day.jpg',
    ),
    cardClass(
        name: 'Tut Ankh Amoun Mask',
        coordinates: '30.04851169999424, 31.233656667074452',
        image: 'https://cdn.i-scmp.com/sites/default/files/styles/portrait/public/d8/images/canvas/2022/11/21/9c9fa39f-468a-457c-8054-c54302dea74a_c853a78f.jpg?itok=0rswC4yy&v=1669027200',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text('Explore Rahhal',
          style: TextStyle(
            color: Colors.orangeAccent,
            fontSize: 30
          ),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text('Suggestions',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25
            ),),
        ),
        CardWidget(
          element: Cards[2],
          onTap: (){Navigator.push(context as BuildContext,MaterialPageRoute(
            builder: (BuildContext context){
              return Details_tut();}, ),);},
        ),
        CardWidget(
          element: Cards[0],
          onTap: (){Navigator.push(context as BuildContext,MaterialPageRoute(
            builder: (BuildContext context){
              return Details();}, ),);},
        ),
        CardWidget(
          element: Cards[1],
          onTap: (){Navigator.push(context as BuildContext,MaterialPageRoute(
            builder: (BuildContext context){
              return Details_tower();}, ),);},
        ),
      ],
    );


  }
}
