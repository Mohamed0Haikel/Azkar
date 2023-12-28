import 'package:audioplayers/audioplayers.dart';
import 'package:azkar/models/azkar_model.dart';
import 'package:flutter/material.dart';


class azkar extends StatefulWidget {
  final List<AzkarModel> azckar;
  const azkar({
    Key? key,
    required this.azckar,
  }) : super(key: key);


  @override
  State<azkar> createState() => _azkarState();
}

class _azkarState extends State<azkar> {

  final audioPlayer = AudioPlayer();
  var currentindex = 0;
  var count =0;
  bool isPlaying = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30.0,),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5.0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${currentindex+1} / ${widget.azckar.length}'),
                  Text(count.toString()),
                ],
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    count++;
                  });
                },
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          widget.azckar[currentindex].text,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 20,
                    child: IconButton(
                        onPressed: (){},
                        icon:Icon(Icons.share_outlined),
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    child: IconButton(
                      onPressed: () async {
                        if(isPlaying){
                          await audioPlayer.pause();
                        }else{
                          Source url = UrlSource(widget.azckar[currentindex].audio);
                          await audioPlayer.play(url);
                        }
                      },
                      icon:Icon(
                          isPlaying ? Icons.stop_circle_outlined : Icons.play_circle_outline_sharp,
                      ),
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          if(currentindex != 0){
                            currentindex = currentindex - 1;
                            count = 0;
                          }
                        });
                      },
                      icon:Icon(Icons.arrow_back_ios_sharp),
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                          if(currentindex != (widget.azckar.length -1)){
                            currentindex = currentindex + 1;
                            count = 0;
                          }
                        });
                      },
                      icon:Icon(Icons.arrow_forward_ios_sharp),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}
