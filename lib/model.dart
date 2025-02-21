class Post {
  int userID;
  int ID;
  String Title;
  String Body;

  Post.fromJson(Map<String, dynamic> json)
      : userID = json['userId'],
        ID = json['id'],
        Title = json['title'],
        Body = json['body'];
}
