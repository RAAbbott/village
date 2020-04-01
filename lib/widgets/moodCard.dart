import 'package:flutter/material.dart';



class MoodCard extends StatefulWidget {
  @override
  MoodCardState createState() => MoodCardState();
}


class MoodCardState extends State<MoodCard> {
  // TalkCard(@required TalkPost post);
  double _value = 3.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 340.0,
      child: Card(
        color: Color(0xFFFFB7A7),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Column(
          children: <Widget>[
            Padding(child: Text("How are you feeling today?", style: TextStyle(color: Colors.white)), padding: EdgeInsets.fromLTRB(0,10,0,0)),
            Slider(value: _value, 
            onChanged: (value) {
              setState(() {
                _value = value;
                }
              );
            },
            min: 0.0, 
            max: 10.0,
            activeColor: Colors.white,
            inactiveColor: Colors.white, 
            divisions: 10,)
          ],
        )
      )
    );
  }
}