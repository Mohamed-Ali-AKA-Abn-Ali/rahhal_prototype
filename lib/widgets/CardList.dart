
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ra7al/screens/details_screen.dart';

import '../classes/card_class.dart';
import 'Card.dart';

class CardList extends StatelessWidget {
  CardList({super.key});

  List<cardClass> Cards=[
    cardClass(
        name: 'Pyramids',
        coordinates: '29.977463459065017, 31.13245258056559',
        image: 'https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-of-giza-and%20camels-2.jpg',
        // onTapp:(){Navigator.push(context as BuildContext,
        //           MaterialPageRoute(
        //           builder: (BuildContext context){
        //           return Details();
        //           }
        //           , ),
        //           );
        //           },
    ),
    cardClass(
        name: 'Pyramids',
        coordinates: '29.977463459065017, 31.13245258056559',
        image: 'https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-of-giza-and%20camels-2.jpg'
    ),
    cardClass(
        name: 'Pyramids',
        coordinates: '29.977463459065017, 31.13245258056559',
        image: 'https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-of-giza-and%20camels-2.jpg'
    ),
    cardClass(
        name: 'Pyramids',
        coordinates: '29.977463459065017, 31.13245258056559',
        image: 'https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-of-giza-and%20camels-2.jpg'
    ),
    cardClass(
        name: 'Pyramids',
        coordinates: '29.977463459065017, 31.13245258056559',
        image: 'https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-of-giza-and%20camels-2.jpg'
    ),
    cardClass(
        name: 'Pyramids',
        coordinates: '29.977463459065017, 31.13245258056559',
        image: 'https://www.planetware.com/photos-large/EGY/egypt-cairo-pyramids-of-giza-and%20camels-2.jpg'
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Cards.length,
        itemBuilder: (context, index) {
      return CardWidget(element:Cards[index],
          onTap:(){Navigator.push(context as BuildContext,
                      MaterialPageRoute(
                      builder: (BuildContext context){
                      return Details();
                      }
                      , ),
                      );
                      },
      );

    });
  }
}
