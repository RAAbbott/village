import 'user.dart';
import 'comment.dart';

class TalkPost {
  String post;
  User user;
  int likes;
  List<Comment> comments;
  DateTime date;
  bool isLiked;
  bool isSaved;

  TalkPost(this.post, this.user, this.likes, this.comments, this.date, this.isLiked, this.isSaved);
}

