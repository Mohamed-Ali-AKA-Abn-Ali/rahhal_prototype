import 'package:flutter/material.dart';
import 'package:ra7al/screens/tower3d_model.dart';
import 'package:ra7al/screens/vid_tower.dart';

class Details_tower extends StatelessWidget {
  const Details_tower({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 100),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(

            backgroundColor: Colors.transparent,

            elevation: 0,
            floating: false,
            pinned: true,
            expandedHeight: 300,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(

              background: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight:Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/Cairo_Tower_by_day.jpg/450px-Cairo_Tower_by_day.jpg',
                  fit: BoxFit.cover,

                ),
              ),

            ),

          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('Cairo Tower',
                style: TextStyle(color: Colors.orangeAccent,
                  fontSize: 40,
                ),),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('The Cairo Tower (Egyptian Arabic: برج القاهرة, Borg El-Qāhira) is a free-standing concrete tower in Cairo, Egypt. At 187 m (614 ft), it was the tallest structure in Egypt for 37 years until 1998, when it was surpassed by the Suez Canal overhead powerline crossing. It was the tallest structure in North Africa for 21 years until 1982, when it was surpassed by the Nador transmitter in Morocco. It was the tallest structure in Africa for one year until 1962, when it was surpassed by Sentech Tower in South Africa. Built from 1956 to 1961, the tower was designed by the Egyptian architect Naoum Shebib, inspired by the Ancient Egyptian Architecture. Its partially open lattice-work design is intended to evoke a pharaonic lotus plant, an iconic symbol of Ancient Egypt. The tower is crowned by a circular observation deck and a revolving restaurant that rotates around its axis occasionally with a view over greater Cairo.',
                style: TextStyle(color: Colors.white,
                  fontSize: 18,
                ),),
            ),
          ),
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context as BuildContext,MaterialPageRoute(
                  builder: (BuildContext context){
                    return VidTower();
                  },
                ),);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(

                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text('Use Rahhal',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),)),

                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context as BuildContext,MaterialPageRoute(
                  builder: (BuildContext context){
                    return TowerModel();
                  },
                ),);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(

                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Text('Show 3D Model',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),)),

                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
