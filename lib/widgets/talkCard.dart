import 'package:flutter/material.dart';
import '../models/talkPost.dart';

class TalkCard extends StatelessWidget {
  // TalkCard(@required TalkPost post);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20,0,0,0),
      height: 280.0,
      width: 200.0,
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
              padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: Column(
                children: <Widget>[
                  // Padding(padding: EdgeInsets.fromLTRB(0,0,0,10), child: Text("Title", style: TextStyle(fontSize:14, color: Color(0xFF535353)))),
                  Text(
                    "this is a post, this is a post, this is a post, this is a post, this is a post, this is a post, this is a post, this is a post, this is a post, this is a post, this is a post", 
                    overflow: TextOverflow.ellipsis,
                    maxLines: 6,
                    style: TextStyle(fontSize: 13, color: Color(0xFF535353))
                  )
                ],
              )
            )
          ],
        )
      )
    );
  }
}