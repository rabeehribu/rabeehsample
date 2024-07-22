import 'package:flutter/material.dart';

class paymentfirst extends StatefulWidget {
  const paymentfirst({super.key});

  @override
  State<paymentfirst> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<paymentfirst> {
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
              child: Text("payments",
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
              padding: const EdgeInsets.only(top:30,left: 30,right: 30),
              child: TextFormField(
                decoration:InputDecoration(
                  prefixIcon:Icon(Icons.wallet),
                  prefixIconColor: Colors.white,
                  border:OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color:Colors.white
                    )
                  
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide(color:Colors.white,width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder:OutlineInputBorder(
                        borderSide:BorderSide(color:Colors.white,width: 2),
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.only(top:30,left: 30,right: 30),
              child: TextFormField(
                decoration:InputDecoration(
                  labelText: "Bank account ",
                  border:OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20)
                  ),
                    enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide(color:Colors.white,width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                   focusedBorder:OutlineInputBorder(
                        borderSide:BorderSide(color:Colors.white,width: 2),
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
            ),

             Padding(
              padding: const EdgeInsets.all(30),
              child: TextFormField(
                decoration:InputDecoration(
                  labelText: "Transition id",
                  border:OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20)
                  ),
                    enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide(color:Colors.white,width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                   focusedBorder:OutlineInputBorder(
                        borderSide:BorderSide(color:Colors.white,width: 2),
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
            ),
            SizedBox(
              height:40,
            ),

            Text("Current method",
            style:TextStyle(
                fontSize:15,
                fontWeight:FontWeight.bold,
                letterSpacing:3
              ),
            ),

             Padding(
              padding: const EdgeInsets.only(top:30,left: 30,right: 30),
              child: TextFormField(
                decoration:InputDecoration(
                  border:OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                  ),
                   enabledBorder: OutlineInputBorder(
                    borderSide:BorderSide(color:Colors.white,width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                   focusedBorder:OutlineInputBorder(
                        borderSide:BorderSide(color:Colors.white,width: 2),
                    borderRadius: BorderRadius.circular(20),
                  )
                 
                  
                ),
              ),
            ),

            SizedBox(
              height: 40,
            ), 

            ElevatedButton( onPressed:(){},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange, // Background color
                ),
            child:Container(
              width: 70,
              child: Center(
                child: Text("Payments",
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
