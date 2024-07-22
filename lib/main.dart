import 'package:flutter/material.dart';
import 'package:my_first_application/bussiness_logic/api_call.dart';
import 'package:my_first_application/screens/fetch_post_screen.dart';
import 'package:my_first_application/screens/homepage.dart';
import 'package:my_first_application/screens/starter.dart';
import 'package:my_first_application/wigets/favsupscreen.dart';
import 'package:my_first_application/wigets/paymentfirst.dart';
import 'package:my_first_application/wigets/paymentsecond.dart';
 // Ensure this import is correct

void main() {
  runApp(const MyApp());-
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My application',
      home:PostList(posts:ApiCall().fetchPosts()) // Ensure this matches the class name
    );
  }
}
