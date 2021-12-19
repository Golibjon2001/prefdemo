import 'package:flutter/material.dart';
import 'package:prefdemo/model/model_page.dart';
import 'package:prefdemo/server/server_page.dart';

class HomPage2 extends StatefulWidget {
  static final String id="hom_page2";
  const HomPage2({Key? key}) : super(key: key);

  @override
  _HomPage2State createState() => _HomPage2State();
}

class _HomPage2State extends State<HomPage2> {
  final namecontroler=TextEditingController();
  final emailcontroler=TextEditingController();
  final passwordcontroler=TextEditingController();
  final phonecontroler=TextEditingController();
  final password2controler=TextEditingController();
  void douLogin(){
    String name=namecontroler.toString().trim();
    String email=emailcontroler.toString().trim();
    String  password=emailcontroler.toString().trim();
    String phone=emailcontroler.toString().trim();
    String password2=emailcontroler.toString().trim();

    Account account=Account.from(name: name, email: email, password: password, phone: phone, password2: password2);
    Pareft2.storeAccount(account);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Icon(Icons.arrow_back, color: Colors.grey[700],),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //#LET'S
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Let's Get Started!", style: TextStyle(fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                const Text("Create an account to Q Alulure to get ail features",
                  style: TextStyle(color: Colors.grey),),
              ],
            ),
            const SizedBox(height: 10,),
            //#Name
            Container(
              padding: EdgeInsets.only(left: 15),
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller:namecontroler ,
                decoration: InputDecoration(
                  icon: Icon(Icons.person, color: Colors.blue,),
                  hintText: "Name",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            //#Email
            Container(
              padding: EdgeInsets.only(left: 15),
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller:emailcontroler,
                decoration: InputDecoration(
                  icon: Icon(Icons.email_outlined, color: Colors.blue,),
                  hintText: "Email",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            //#Phone
            Container(
              padding: EdgeInsets.only(left: 15),
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller:phonecontroler,
                decoration: InputDecoration(
                  icon: Icon(Icons.phone_android, color: Colors.blue,),
                  hintText: "Phone",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            //#Password
            Container(
              padding: EdgeInsets.only(left: 15),
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller:passwordcontroler,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Colors.blue,),
                  hintText: "Password",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            //#Confirm  Password
            Container(
              padding: EdgeInsets.only(left: 15),
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller:password2controler,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Colors.blue,),
                  hintText: "Confirm Password",
                  border: InputBorder.none,
                ),
              ),
            ),

            const SizedBox(height: 30,),
            //#create
            Container(
              // width: double.infinity,
              height: 40,
              margin: EdgeInsets.only(left: 90, right: 90),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.indigo,
              ),
              child: FlatButton(
                onPressed: () {
                   douLogin();
                },
                child: Text("CREATE", style: TextStyle(color: Colors.white),),
                color: Colors.indigo,
              ),
            ),
            SizedBox(height: 30,),
            //#Alerday Login
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                Text("Login hare", style: TextStyle(color: Colors.blue),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

