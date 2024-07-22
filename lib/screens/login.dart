import 'package:flutter/material.dart';
import 'package:my_first_application/screens/signup.dart';

class Login_screen extends StatelessWidget {
  const Login_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          
   backgroundColor: const Color.fromARGB(255, 46, 139, 87),
       body: Align(
          alignment: Alignment.topCenter, // Aligns the child to the top center
          child: Padding(
            padding:EdgeInsets.only(top:200), // Adds some top padding
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Welcome Back',
                    style: TextStyle(
                      fontFamily: "prompt",
                      fontWeight:FontWeight.w700,
                      fontSize: 30,
                      color: Colors.white
                    ),
                    ),
                  ],
                ),
                SizedBox(height: 10,),

                
                Text('login into your account',
                style: TextStyle(
                  color: Colors.white
                ),
                ),
                SizedBox(height: 80,),



                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 15),
                  child: TextFormField(
                    decoration:InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      filled: true,
                      fillColor: Colors.green,
                     labelText: "username",
                     labelStyle: TextStyle(color:Colors.white),
                     border: OutlineInputBorder(
                      borderRadius:BorderRadius.all(Radius.circular(10)),
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

                SizedBox(height: 80,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: SizedBox(
                  width: double.infinity,
                  child:
                ElevatedButton(onPressed: (){},
             style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Background color
                ),
             child:Text('Login',
             style: TextStyle(
              color: Colors.white,
             ),
             ))
                )
              ),

              SizedBox(height: 2),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'already have an account?',
                style: TextStyle(
                  color: Colors.black
                ),
              ),

              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) =>Signup_screen(),));
              }, 
              child:Text('sign up',
              style: TextStyle(
                color: Colors.blue
              ),
              ))
            ],
          )
          
            

              ],
          
            ),
            
          ),
        ),
      )
    ;
  }
}