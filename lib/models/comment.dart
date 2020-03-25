import 'user.dart';

class Comment {
  int id;
  User user;
  String comment;
  DateTime dateOfComment;
  bool isLiked;
  Comment(this.user, this.comment, this.dateOfComment, this.isLiked, this.id);
}