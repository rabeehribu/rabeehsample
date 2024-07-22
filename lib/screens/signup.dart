import 'package:flutter/material.dart';
import 'package:my_first_application/screens/homepage.dart';

class Signup_screen extends StatelessWidget {
  const Signup_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          
   
   
   backgroundColor: const Color.fromARGB(255, 46, 139, 87),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(padding:EdgeInsets.only(top: 100),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Register",
              style: TextStyle(
                fontFamily: "prompt",
                fontWeight:FontWeight.w700,
                fontSize: 60,
                color: Colors.white,
              )
              ),
            ],
          ),
          Text('create your account',
          style: TextStyle(
            color:Colors.white
          ),
          ),
          SizedBox(height:80,),
       
          Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                  child: TextFormField(
                     decoration:InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      filled: true,
                      fillColor: Colors.green,
                     labelText: "Username",
                     labelStyle: TextStyle(color:Colors.white),
                     border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:BorderSide(color: Colors.white)
                     )
                    ) ,
                  ),
                ),

          Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                  child: TextFormField(
                     decoration:InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      filled: true,
                      fillColor: Colors.green,
                     labelText: "Email",
                     labelStyle: TextStyle(color:Colors.white),
                     border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:BorderSide(color: Colors.white)
                     )
                    ) ,
                  ),
                ),


          Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                  child: TextFormField(
                     decoration:InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      filled: true,
                      fillColor: Colors.green,
                     labelText: "password",
                     labelStyle: TextStyle(color:Colors.white),
                     border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:BorderSide(color: Colors.white)
                     )
                    ) ,
                  ),
                ),
                
        Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                  child: TextFormField(
                     decoration:InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      filled: true,
                      fillColor: Colors.green,
                     labelText: "conform password",
                     labelStyle: TextStyle(color:Colors.white),
                     border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:BorderSide(color: Colors.white)
                     )
                    ) ,
                  ),
                ), 

                SizedBox(height: 80,),
                
         Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90),
                child: SizedBox(
                  width: double.infinity,
                  child:
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) =>Homepage_screen(),));
                },
             style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Background color
                ),
             child:Text('Sign up',
             style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold
             ),
             ))
                )
              ),                 
        
        ],
        
      ),


        )
      ),
    );
  }
}