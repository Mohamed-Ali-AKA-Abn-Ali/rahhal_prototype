import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
class VidTut extends StatefulWidget {
  VidTut({super.key});

  @override
  State<VidTut> createState() => _VidTutState();
}

class _VidTutState extends State<VidTut> {
  VideoPlayerController _controller=VideoPlayerController.asset('assets/videos/tutsVideo.mp4');
  late Future<void> _initializeVideoPlayerFuture;
  final FlickManager flickManager= FlickManager(videoPlayerController: VideoPlayerController.asset('assets/videos/pyramidsVideo.mp4'));
  @override
  void initState(){


    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();

  }
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

      body:
      Container(
        color: Colors.transparent,
        width: double.infinity,
        height:double.infinity,
        child:Center(
          child: AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          ),
          // _controller.value.isInitialized?VideoPlayer(_controller):Container(),

        ),


      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        onPressed: () {
          setState(() {
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              _controller.play();
            }
          });
        },
        child:
        Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
      ),
    );
  }
}
