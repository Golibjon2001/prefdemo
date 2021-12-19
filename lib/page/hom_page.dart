import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prefdemo/model/model_page.dart';
import 'package:prefdemo/page/hom_page2.dart';
import 'package:prefdemo/server/server_page.dart';
class HomPage extends StatefulWidget {
  static const String id="hom_page";
  const HomPage({Key? key}) : super(key: key);

  @override
  _HomPageState createState() => _HomPageState();
}

class _HomPageState extends State<HomPage> {
  final emailcontroler=TextEditingController();
  final passwordcontroler=TextEditingController();
  void doLogin(){
   String email=emailcontroler.toString().trim();
   String password= passwordcontroler.toString().trim();
   User user=User.from(email: email, password: password);
   Pareft.storeUser(user);
   Pareft.loadUser().then((user) => {
     print(user!.email),
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Column(
          children: [
            //#Image,Welkome
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 margin: const EdgeInsets.only(top:50,left: 50,right: 50),
                height: 200,
                 width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/image/image_2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
               ),
               const SizedBox(height: 10,),
               const Text("Welcome back!",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
               const SizedBox(height: 10,),
               const Text("Log in to your existant account of O Apure",style: TextStyle(color: Colors.grey),),
             ],
           ),
            const SizedBox(height: 10,),
            //#Email
            Container(
              padding: EdgeInsets.only(left: 15),
              margin: EdgeInsets.only(left: 10,right: 10),
              height: 50,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(25),
                color: Colors.grey[200],
              ),
              child:TextField(
                controller:emailcontroler ,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            //#Password
            Container(
              padding: EdgeInsets.only(left: 15),
              margin: EdgeInsets.only(left: 10,right: 10),
              height: 50,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(25),
                color: Colors.grey[200],
              ),
              child:TextField(
                controller:passwordcontroler,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            //#Forgot
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               Container(
                 padding: EdgeInsets.only(right: 20),
                 child:  Text("Forgot Password?"),
               ),
              ],
            ),
            const SizedBox(height: 15,),
            //#Login
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(left:90,right:90),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.indigo,
              ),
              child: FlatButton(
                onPressed: (){
                 doLogin();
                },
                child: Text("LOG IN",style: TextStyle(color: Colors.white),),
                color: Colors.indigo,
              ),
            ),
            const SizedBox(height: 10,),
            //Or connect
            Text("Or connect using",style: TextStyle(color: Colors.grey),),
            const SizedBox(height: 10,),
            //#facebook Google
            Container(
              margin: EdgeInsets.only(left: 50,right: 50),
              child: Row(
                children: [
                  Expanded(
                    child:Container(
                      padding: EdgeInsets.only(left: 20),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.indigo,
                      ),
                      child:Row(
                        children: [
                          Text("f",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:25),),
                          SizedBox(width: 15,),
                          Text("Facebook",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 15,),
                  Expanded(
                    child:Container(
                      padding: EdgeInsets.only(left: 20),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),
                      child:Row(
                        children: [
                          Text("G",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:25),),
                          SizedBox(width: 15,),
                          Text("Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),
            //#Dont Sign
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                GestureDetector(
                  onTap: (){
                   Navigator.pushReplacementNamed(context, HomPage2.id);
                  },
                  child: Text("Sigin Up",style: TextStyle(color: Colors.blue),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


