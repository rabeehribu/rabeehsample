import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _BottomnaviState();
}

class _BottomnaviState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 46, 139, 87),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(top: 40),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                          fontFamily: "prompt",
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 34, 110, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.white30,
                      labelText: "search",
                      labelStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.blue))),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.1,
                child: GridView.builder(
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 20,
                        height: 20,
                        color: Colors.white,
                        child: Center(child: Text("${index + 1}")),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size(1, 120),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 46, 139, 87),
            leading: CircleAvatar(
              radius: 70,
              backgroundColor: Color.fromARGB(255, 198, 238, 21),
            ),
          ),
        ),
      ),
    );
  }
}
