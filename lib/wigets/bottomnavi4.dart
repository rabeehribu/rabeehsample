import 'package:flutter/material.dart';

class profilescreen extends StatefulWidget {
  const profilescreen({super.key});

  @override
  State<profilescreen> createState() => _profilescreemState();
}

class _profilescreemState extends State<profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 139, 87),
        
        body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:50,left: 60),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text("Profile",
              style:TextStyle(
                fontSize:30,
                color:Colors.white
              ),
              )),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 90,
              ),
              SizedBox(
                height: 200,
              )
            ],

          ),
          
              Text("Edit Profile",
              style:TextStyle(
                color:Colors.white
              ),
              ),
              SizedBox(
                height: 80,
              ),


           ListTile(
      leading: Icon(Icons.person),
      title: Text("Username"),
      iconColor:Colors.white,
      textColor:Colors.white,
      ),

      ListTile(
        leading: Icon(Icons.mail),
      title: Text("Email"),
       iconColor:Colors.white,
        textColor:Colors.white,
      ),

      ListTile(
        leading: Icon(Icons.phone),
      title: Text("phone"),
       iconColor:Colors.white,
        textColor:Colors.white,
      ),

      // ListTile(
      //   leading: Icon(Icons.person_2_rounded),
      // title: Text("Edit profile"),
      //  iconColor:Colors.white,
      //   textColor:Colors.white,
      // ),

      ListTile(
        leading: Icon(Icons.settings),
      title: Text("settings"),
       iconColor:Colors.white,
        textColor:Colors.white,
      ),
            ListTile(
        leading: Icon(Icons.logout),
      title: Text("logout"),
      iconColor:Colors.red,
      textColor:Colors.red,
            ),
            
      
      
      
      ],
      
      ),
    );
   
     

  }
}

        