import 'package:flutter/material.dart';
import 'package:ra7al/screens/tut3d_model.dart';
import 'package:ra7al/screens/vid_tut.dart';

class Details_tut extends StatelessWidget {
  const Details_tut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 100),
      // backgroundColor: Colors.transparent,
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
                child: Image.network('https://cdn.i-scmp.com/sites/default/files/styles/portrait/public/d8/images/canvas/2022/11/21/9c9fa39f-468a-457c-8054-c54302dea74a_c853a78f.jpg?itok=0rswC4yy&v=1669027200',
                  fit: BoxFit.cover,

                ),
              ),

            ),

          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('Tut Ankh Amun Mask',
                style: TextStyle(color: Colors.orangeAccent,
                  fontSize: 40,
                ),),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text('The gold funerary mask of Tutankhamun is an example of the highest artistic and technical achievements of the ancient Egyptians in the New Kingdom. The exact portrayal of the king’s facial features achieved here made it possible for his soul to recognize him and return to his mummified body. Thus ensuring his resurrection. After being buried for over 3,000 years, it was excavated by Howard Carter in 1925 from tomb KV62 in the Valley of the Kings. Covering the head of the wrapped mummy in its coffin and activated by a magical spell, no.151b from the Book of the Dead, the mask ensured more protection for the king’s body.'
                  'On his brow is the kingly uraeus: the Wadjet or rearing cobra, representing Lower Egypt, combined with the vulture Nekhbet of Upper Egypt.The combination of the two is symbolic of his domination of both lands. That is strikingly similar to the Narmer Palette‘s message of control of both halves of Egypt.',
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
                    return VidTut();
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
                    return TutsModel();
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
