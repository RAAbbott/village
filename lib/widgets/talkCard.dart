import 'package:flutter/material.dart';
import '../models/talkPost.dart';

class TalkCard extends StatelessWidget {
  // TalkCard(@required TalkPost post);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20,0,0,0),
      height: 320.0,
      width: 230.0,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45.0)
        ),
        child: Column(
          children: <Widget>[
            Container(
              height: 70.0,
              padding: EdgeInsets.fromLTRB(15, 0, 0,0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(backgroundColor: Colors.grey),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 20, 0, 0), 
                    child: Column(
                      children: <Widget>[
                        Text("User", style: TextStyle(fontSize: 11, color: Color(0xFF535353))),
                        Text("Joined 2020", style: TextStyle(fontSize: 8, color: Color(0xFF535353)))
                      ],
                    )
                    ),
                ],
              )
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
              child: Column(
                children: <Widget>[
                  Text(
                    "this is a post, this is a post, this is a post, this is a post, this is a post, this is a post, this is a post, this is a post, this is a post, this is a post, this is a post", 
                    overflow: TextOverflow.ellipsis,
                    maxLines: 6,
                    style: TextStyle(fontSize: 13, color: Color(0xFF535353))
                  )
                ],
              )
            ),
            Container(
              height: 60,
              child: Padding(
                padding: EdgeInsets.fromLTRB(30,50,0,0),
                child: Row(
                  children: <Widget>[
                    // ImageButtonInputElement(icon: AssetImage('images/applause-icon.png')),
                    // Image(image: AssetImage('images/applause.png')),
                    IconButton(icon: Icon(Icons.thumb_up), onPressed: null),
                    IconButton(icon: Icon(Icons.mode_comment), onPressed: null,),
                    IconButton(icon: Icon(Icons.bookmark_border), onPressed: null,),
                  ],
                )
              )
            )
          ],
        )
      )
    );
  }
}