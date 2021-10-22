
class HomeModel {
  String name;
  String img;
  String birthday;
  String status;
  String nickname;

  String portrayed;


 HomeModel({this.name, this.img,this.birthday,this.nickname,this.portrayed,this.status});

 HomeModel.fromJson(Map<String, dynamic> json){
  name = json['name'];
  img = json['img'];
  birthday = json['birthday'];
  nickname = json['nickname'];
  // occupation = json['occupation'];
  portrayed = json['portrayed'];
  status = json['status'];
 }


 }