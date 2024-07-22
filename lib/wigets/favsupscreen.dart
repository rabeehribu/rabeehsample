import 'package:flutter/material.dart';

class favsdetail extends StatefulWidget {
  const favsdetail({super.key});

  @override
  State<favsdetail> createState() => _favsdetailState();
}

class _favsdetailState extends State<favsdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    backgroundColor: Color.fromARGB(255, 46, 139, 87),

    body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          //mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60,),
              child: Text("Details",
              style:TextStyle(
                fontSize:20,
                fontWeight:FontWeight.bold,
                letterSpacing:5,
                color:Colors.white
              ),
              ),
            ),
           

            

               

           
               

                

                 

                

              SizedBox(
                  height:600,
                ),


                  ElevatedButton( onPressed:(){},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Background color
                ),
            child:Container(
              width: 90,
              child: Center(
                child: Text("Add to cart",
                style:TextStyle(
                  color:Colors.white
                ),
                ),
              ),
            ))
          ],
      
        ),
      ),
    );
  }
}