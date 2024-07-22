import 'package:flutter/material.dart';
import 'package:my_first_application/wigets/bottomnavi.dart';
import 'package:my_first_application/wigets/bottomnavi2.dart';
import 'package:my_first_application/wigets/bottomnavi3.dart';
import 'package:my_first_application/wigets/bottomnavi4.dart';

class Homepage_screen extends StatefulWidget {
  const Homepage_screen({super.key});

  @override
  State<Homepage_screen> createState() => _Homepage_screenState();
}

class _Homepage_screenState extends State<Homepage_screen> {
  int indexNum =0;
List<Widget> tabwidgets =[
  Homescreen(),
  Favescreen(),
  Cart_screen(),
  profilescreen()
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

   bottomNavigationBar:
    BottomNavigationBar(
        items:const[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor:Color.fromARGB(255, 46, 139, 87),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
            backgroundColor:Color.fromARGB(255, 46, 139, 87),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'cart',
            backgroundColor: Color.fromARGB(255, 46, 139, 87),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
            backgroundColor:  Color.fromARGB(255, 46, 139, 87),
            
          ),
        ],

        
        // showSelectedLabels:false,
        currentIndex:indexNum,
        onTap:(int index){
            setState(() {
              indexNum = index;
            });
        },
      ),
      backgroundColor: Color.fromARGB(255, 46, 139, 87),
       body: tabwidgets[indexNum]
    );
  }
}

    
  
