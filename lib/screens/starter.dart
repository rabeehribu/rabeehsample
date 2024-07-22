import 'package:flutter/material.dart';
import 'package:my_first_application/screens/login.dart';

class StarterScreen extends StatelessWidget {
  const StarterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body:Container(
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/download.jpg'), fit: BoxFit.fill)),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text('Find plants',
                style: TextStyle(
                 fontSize: 30,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold, // Make text bold
    color: Colors.blue, // Change text color
  ),
),
              ],
            ),
            
            SizedBox(height: 80,),
            Text('find your favorite plants on our app',
            style: TextStyle(
              fontSize: 10,
              letterSpacing: 3,
            ),
            ),

            SizedBox(height: 180,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) =>Login_screen(),));
            },

             style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                ),
             child:Text('Get started',
             style: TextStyle(
              color: Colors.white,
             ),
             ))
          ],
        
        ),
      ) ,

    );
    
    
  }
}