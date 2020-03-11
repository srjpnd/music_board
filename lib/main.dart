import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "musical_board",
    home: homepage(),
));

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  
   playme(int integers){
    
    final player = AssetsAudioPlayer();
    player.open("assets/note$integers.wav",);
    
  }

  Expanded notekey( {Color color,int integers}){
   return Expanded(
       child:Container(
         decoration:BoxDecoration(
           border: Border.all(color: Colors.purple),
           boxShadow: [BoxShadow(blurRadius: 20.0,
           offset: Offset(0, 10)
           
             
           )]
         ),
         margin: EdgeInsets.all(10.0),
         child: FlatButton(
        onPressed: (){
            playme(integers);},
            color: color,
    ),),
   );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade400,
      body: SafeArea(child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: <Widget>[
          notekey(color: Colors.blueGrey[900],integers: 1),
          notekey(color: Colors.red,integers: 2),
          notekey(color: Colors.teal,integers: 3),
          notekey(color: Colors.brown,integers: 4),
          notekey(color: Colors.purple,integers: 5),
          notekey(color: Colors.pink,integers: 6),
          notekey(color: Colors.orange[900],integers: 7),
          

      ],),),
      
    );
  }
}
