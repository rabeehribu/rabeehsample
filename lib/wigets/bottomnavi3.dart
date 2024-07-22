import 'package:flutter/material.dart';

class Cart_screen extends StatefulWidget {
  const Cart_screen({super.key});

  @override
  State<Cart_screen> createState() => _Cart_screenState();
}

class _Cart_screenState extends State<Cart_screen>  with TickerProviderStateMixin {
  late final TabController _tabController;

   @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 139, 87),
 appBar: AppBar(
        title: const Text('cart',
        style: TextStyle(
          color: Colors.white
        ),),
        bottom: TabBar(
          labelColor: Colors.white,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: "All",
            ),
            Tab(
              text: "Outdoor",
            ),
            Tab(
              text: "Indoor",
            ),
            Tab(
              text: "Special",
            )
          ],
        ),
        backgroundColor: Color.fromARGB(255, 46, 139, 87),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text("It's cloudy here"),
          ),
          Center(
            child: Text("It's rainy here"),
          ),
          Center(
            child: Text("It's sunny here"),
          ),
          Center(
            child: Text("data"),
          )
        ],
      ),
    );
  }
}      

 