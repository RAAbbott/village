import 'package:flutter/material.dart';



class NeedPromptCard extends StatelessWidget {

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
            Padding(child: Text("Is there anything you are in need of?", style: TextStyle(color: Colors.white)), padding: EdgeInsets.fromLTRB(0,10,0,0)),
            
          ],
        )
      )
    );
  }
}