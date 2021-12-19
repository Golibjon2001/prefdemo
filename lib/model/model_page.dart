class User{
  String email;
  String password;
  String id;
  User({required this.email,required this.password,required this.id});
  User.from({required this.email,required this.password,}):id="";

 User.fromJson(Map<String,dynamic> json)
  :id=json["id"],
   email=json["email"],
   password=json["password"];

 Map <String,dynamic> toJson()=>{
   'id':id,
   'email':email,
   'password':password,
 };
}
class Account{
  String name;
  String email;
  String phone;
  String password;
  String password2;
  String id;
  Account({required this.name,required this.email,required this.password,required this.phone,required this.password2,required this.id});
  Account.from({required this.name,required this.email,required this.password,required this.phone,required this.password2,}):id="";

  Account.fromJson(Map<String,dynamic> json)
  :name=json["name"],
  email=json['email'],
  phone=json['phone'],
  password=json['password'],
  password2=json['password2'],
  id=json['id'];

   Map <String,dynamic> toJson()=>{
     'name':name,
     'email':email,
     'phone':phone,
     'password':password,
     'password2':password2,
   };
}