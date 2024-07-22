import 'package:flutter/material.dart';

class Favescreen extends StatefulWidget {
  const Favescreen({super.key});

  @override
  State<Favescreen> createState() => _FavescreenState();
}

class _FavescreenState extends State<Favescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 139, 87),
      body: Align(
        alignment: Alignment.center, // Aligns the child to the top center
        child:
         Padding(
            padding: EdgeInsets.only(top:10), // Adds some top padding
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom:50,left: 40),
                        child: Text("favorites",
                        style: TextStyle(
                          color:Colors.white,
                          fontWeight:FontWeight.bold,
                          fontSize:40
                        ),
                        ),
                        
                      ),
                    ],
                  ),
                  
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height /1.5,
                    child: ListView.builder(
                      itemCount:15,
                      itemBuilder: (context, index) {
                        return Card(
                          color: Colors.grey,
                          elevation: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 150,
                              child: ListTile(
                                title: Text("rrr"),
                                subtitle: Text("data"),
                                trailing: Icon(Icons.icecream),
                                leading: Icon(Icons.lock),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(onPressed: 
                    (){}, child:Container(
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color:Colors.green
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:80, vertical:10),
                        child: Text("Add to cart",style:TextStyle(
                          color:Colors.white,
                          
                        ),),
                      ),
                    )),
                    
                  )
                ],
              ),
            )),
      ),
    );
  }
}
