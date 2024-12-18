import 'package:ads_app/UI/home_page/homepage.dart';
import 'package:ads_app/route_generator.dart';
import 'package:ads_app/service/firestore_db/firestore_services.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewUserPage extends StatefulWidget {
  static const route = '/newUser';
  const NewUserPage({super.key});

  @override
  State<NewUserPage> createState() => _NewUserPageState();
}

class _NewUserPageState extends State<NewUserPage> {

  TextEditingController nameController = TextEditingController();
  //TextEditingController userIDController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  DateTime? dob;
  int avatarSelectNumber =1;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Form(
            child: Column(
              children: [
                const Text("Looks Like you are new here, We'd love to get to know more about you"),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: nameController,
                                decoration: const InputDecoration(
                                  labelText: "What's your Name?",
                                  border: OutlineInputBorder()),),
                ),
                
                // Text("Your User ID will be the Id you'll be giving merchants instead of your phone Number/Email Id "),
                
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: TextFormField(
                //     validator: (value){
                      
                //       if(value?.length == 6 && value!=null ) 
                //       {
                //         if(!RegExp(r'^[A-Z]+$').hasMatch(value.substring(0,1))|| !RegExp(r'^[0-9]+$').hasMatch(value.substring(2,5)))
                //                   {
                //                     return "Your User ID needs to be 2 alphabets followed by 4 numbers";
                //                     }
                //                   }
                //       else{
                //                     return "Your User ID needs to be 2 alphabets followed by 4 numbers";
                        
                //       }
                //                   return null;
                //     },
                    
                //     controller:userIDController,
                //                 decoration: InputDecoration(
                //                   labelText: "Choose your User ID",
                //                   border: OutlineInputBorder()),),),
              
                const Text("when were you born? "),
              
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                                keyboardType: TextInputType.none,
                              
                                controller: dobController,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(onPressed: () async{
                                    var picked = await showDatePicker(context: context, firstDate: DateTime(1930,08), lastDate: DateTime.now());
                                    dob = picked;
                                    if(picked !=null){
                                      setState(() {
                                      dobController.text = "${picked.day}-${picked.month}-${picked.year}";
                                    });
                                    }
                                    
                                    }, icon: const Icon(Icons.calendar_month),),
                                  labelText: "Your Date of Birth",
                                  border: const OutlineInputBorder()),),),
                
                const Text("Choose an Avatar for your Display Picture"),
              
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            avatarSelectNumber=1;
                          });
                        },
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: avatarSelectNumber==1?Colors.green:Colors.grey,
                        child: const CircleAvatar(
                          radius: 48,
                          backgroundImage: AssetImage('lib/assets/images/original-2b1144775c41b50133edf852dd54f347.png'),),),
                      ),
                  
                        GestureDetector(
                          onTap: (){
                          setState(() {
                            avatarSelectNumber=2;
                          });
                        },
                          child: CircleAvatar(
                          radius: 50,
                          backgroundColor: avatarSelectNumber==2?Colors.green:Colors.grey,
                                                child: const CircleAvatar(
                          radius: 48,
                          backgroundImage: AssetImage('lib/assets/images/original-dd3ce9cb4856d98295be2a9a5525b5bb.png'),),),
                        ),
                  
                         GestureDetector(
                          onTap: (){
                          setState(() {
                            avatarSelectNumber=3;
                          });
                        },
                           child: CircleAvatar(
                                                   radius: 50,
                                                   backgroundColor: avatarSelectNumber==3?Colors.green:Colors.grey,
                                                 child: const CircleAvatar(
                                                   radius: 48,
                                                   backgroundImage: AssetImage('lib/assets/images/original-fbeddcbe07c6e1b377c7bc4820c0893c.png'),),),
                         )
                    ],),
                ),
                    ElevatedButton(onPressed: () async{ 
                      await FireBaseService().addUser(nameController.text,dob! , avatarSelectNumber);
                      context.replaceNamed(HomePage.route);
                   
                      
                     }, child: const Text("Lets get started"),)
              
              ]
            ),
          ),
        )
      ),
    );
  }
}