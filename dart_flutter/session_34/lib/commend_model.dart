class CommendModel {
  int? postId;
  int? id;
  String? name;
  String? email;
  String? body;

  CommendModel({this.postId, this.id, this.body, this.name, this.email});

  factory CommendModel.valueFromJson(Map<String, dynamic> json) {
    return CommendModel(
      postId: json["postId"] as int,
      id: json["id"] as int,
      name: json["name"] as String,
      email: json["email"] as String,
      body: json["body"] as String
    );
  }



}