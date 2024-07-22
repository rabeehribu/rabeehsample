import 'package:flutter/material.dart';

class Paymentsecond extends StatefulWidget {
  const Paymentsecond({super.key});

  @override
  State<Paymentsecond> createState() => _paymentState();
}

class _paymentState extends State<Paymentsecond> {
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
              child: Text("Add payment",
              style:TextStyle(
                fontSize:20,
                fontWeight:FontWeight.bold,
                letterSpacing:5,
                color:Colors.white
              ),
              ),
            ),
            SizedBox(
              height: 50,
            ),

            Padding(
                  padding: const EdgeInsets.only(top:30,left: 40,right: 40),
                  child: TextFormField(
                     decoration:InputDecoration(
                      //prefixIcon: Icon(Icons.lock),
                      filled: true,
                      fillColor: Colors.green,
                     labelText: "Name",
                     labelStyle: TextStyle(color:Colors.white),
                     border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:BorderSide(color: Colors.white)
                     )
                    ) ,
                  ),
                ), 

                SizedBox(
              height: 10,
            ),

            Padding(
                  padding: const EdgeInsets.only(top:10,left: 40,right: 40),
                  child: TextFormField(
                     decoration:InputDecoration(
                      //prefixIcon: Icon(Icons.lock),
                      filled: true,
                      fillColor: Colors.green,
                     labelText: "Choosen method",
                     labelStyle: TextStyle(color:Colors.white),
                     border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:BorderSide(color: Colors.white)
                     )
                    ) ,
                  ),
                ), 

                 SizedBox(
              height: 10,
            ),

            Padding(
                  padding: const EdgeInsets.only(top:10,left: 40,right: 40),
                  child: TextFormField(
                     decoration:InputDecoration(
                      //prefixIcon: Icon(Icons.lock),
                      filled: true,
                      fillColor: Colors.green,
                     labelText: "fill with form",
                     labelStyle: TextStyle(color:Colors.white),
                     border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:BorderSide(color: Colors.white)
                     )
                    ) ,
                  ),
                ), 
               

                SizedBox(
                  height: 60,
                ),


                  ElevatedButton( onPressed:(){},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Background color
                ),
            child:Container(
              width: 130,
              child: Center(
                child: Text("Add more details",
                style:TextStyle(
                  color:Colors.white
                ),
                ),
              ),
            )),

             SizedBox(
                  height:10,
                ),


                  ElevatedButton( onPressed:(){},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Background color
                ),
            child:Container(
              width: 90,
              child: Center(
                child: Text("Scan QR",
                style:TextStyle(
                  color:Colors.white
                ),
                ),
              ),
            )),


              SizedBox(
                  height:200,
                ),


                  ElevatedButton( onPressed:(){},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Background color
                ),
            child:Container(
              width: 90,
              child: Center(
                child: Text("Save",
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