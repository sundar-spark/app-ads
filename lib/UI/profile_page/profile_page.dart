import 'package:ads_app/UI/Login_page/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  
  @override
  Widget build(BuildContext context) {
  var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(16),
     // color:Colors.amber,
      child:Center(
        child: Column(children: [
          Card(
            color: Color.fromARGB(255, 218, 238, 255),
            child:Container(
            padding: EdgeInsets.all(8),
            height: size.height*0.3,
            width: size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('lib/assets/images/original-2b1144775c41b50133edf852dd54f347.png'),),
                    
                    Text("Name",style: TextStyle(fontSize: 24),),
                    Text("LW2016",style:TextStyle(fontSize: 18))
                      ],
                ),
                Column(),
              ],
            ),)
        ),
        
        ElevatedButton(onPressed: ()async{
          FirebaseAuth fba = FirebaseAuth.instance;
          await fba.signOut();
          if(fba.currentUser==null){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> LoginPage()),(value)=>false);
          }
        }, child: Text("Logout"))
        ],)
      ));
  }
}