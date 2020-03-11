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
  
  Expanded playme(int integers){
    
    final player = AssetsAudioPlayer();
    player.open("assets/note$integers.wav",);
    
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade400,
      body: SafeArea(child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[

        Expanded(
                  child: FlatButton(onPressed: (){
            playme(1)
            ;},color: Colors.blueAccent,
            ),
        ),
        FlatButton(onPressed: (){
          playme(2);},
          color:Colors.red ,),
        FlatButton(onPressed: (){
          playme(3);},color:Colors.brown,),
        FlatButton(onPressed: (){
          playme(4);},color:Colors.green ,),
        FlatButton(onPressed: (){
          playme(5); },color: Colors.purple,),
        FlatButton(onPressed: (){
          playme(6);},color:Colors.pink,),
        FlatButton(onPressed: (){
          playme(7);},color:Colors.black),
        
        
      ],),),
      
    );
  }
}