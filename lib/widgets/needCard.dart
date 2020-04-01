import 'package:flutter/material.dart';


class NeedCard extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20,0,0,0),
      height: 180.0,
      width: 180.0,
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              height: 65.0,
              padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Row(
                children: <Widget>[
                  CircleAvatar(backgroundColor: Colors.grey),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15, 20, 0, 0), 
                    child: Column(
                      children: <Widget>[
                        Text("Anonymous", style: TextStyle(fontSize: 11, color: Color(0xFF535353))),
                      ],
                    )
                    ),
                ],
              )
            ),
            Text("Baby Supplies", style: TextStyle(fontSize:13, fontWeight: FontWeight.bold)),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 8, 15, 10),
              child: Column(
                children: <Widget>[
                  Text(
                    "this is a post, this is a post, this is a post, this is a post, this is a post, this is a post, this is a post, this is a post, this is a post, this is a post, this is a post", 
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: TextStyle(fontSize: 12, color: Color(0xFF535353))
                  )
                ],
              )
            ),
          ],
        ),
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45.0)
        ),
      )
    );
  }
}