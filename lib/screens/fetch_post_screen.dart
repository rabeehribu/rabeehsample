import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_application/models/post_model.dart';

class PostList extends StatelessWidget {
  final Future<List<Post>> posts;
  PostList({required this.posts});

  @override
  final formkey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController bodyController = TextEditingController();
  TextEditingController idcontroller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: FutureBuilder(
        future: posts,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                      snapshot.data![index].title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(snapshot.data![index].id.toString()),
                  ),
                );
              },
              separatorBuilder: (context, Index) {
                return SizedBox(
                  height: 20,
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        showModalBottomSheet(
            context: context,
            builder: (context) {
              return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Enter title";
                            }
                            return null;
                          },
                          controller: titleController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: " enter tittle"),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "enter value";
                            }
                            return null;
                          },
                          controller: bodyController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter Body"),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Enter ID";
                            }
                            return null;
                          },
                          controller: idcontroller,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter id"),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10)),
                          child: TextButton(
                              onPressed: () async {
                                if (formkey.currentState!.validate()) {
                                  print("validated");
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsetsDirectional.symmetric(
                                    vertical: 5.0, horizontal: 50),
                                child: Text(
                                  "submit",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        )
                      ],
                    ),
                  ));
            });
      }),
    );
  }
}
