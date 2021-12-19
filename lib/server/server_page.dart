import 'dart:convert';

import 'package:prefdemo/model/model_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Pareft{
  static storeUser(User user) async{
    SharedPreferences prefer= await SharedPreferences.getInstance();
    String stringUser=jsonEncode(user);
    prefer.setString('user', stringUser);
  }
  static Future<User?> loadUser() async{
    SharedPreferences prefer= await SharedPreferences.getInstance();
    String? stringUser=prefer.getString('user');
    if(stringUser==null||stringUser.isEmpty){
      return null;
    }
    Map<String,dynamic> map=jsonDecode(stringUser);
    return User.fromJson(map);
  }
  static Future<bool> removeUser()async{
    SharedPreferences prefer= await SharedPreferences.getInstance();
    return prefer.remove('user');
  }
}
class Pareft2{
  static storeAccount(Account account) async{
    SharedPreferences prefer= await SharedPreferences.getInstance();
    String stringAccount=jsonEncode(account);
    prefer.setString('account', stringAccount);
  }
  static Future<Account?> loadAccount() async{
    SharedPreferences prefer= await SharedPreferences.getInstance();
    String? stringAccount=prefer.getString('account');
    if(stringAccount==null||stringAccount.isEmpty){
      return null;
    }
    Map<String,dynamic> map=jsonDecode(stringAccount);
    return Account.fromJson(map);
  }
  static Future<bool> removeAccount()async{
    SharedPreferences prefer= await SharedPreferences.getInstance();
    return prefer.remove('account');
  }
}
