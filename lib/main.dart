import 'package:flutter/material.dart';

import 'Models/PostItemModel.dart';
import 'post_item.dart';
import 'task_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  var list = [
    const PostItemModel(
        'hasan',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet, nulla et',
        'Images/img1.jfif'),
    const PostItemModel(
        'mohmed',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet, nulla et',
        'Images/img2.jfif'),
    const PostItemModel(
        'akram',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet, nulla et',
        'Images/img3.jfif')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'list view separated test',
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ))
        ],
        backgroundColor: Colors.blue,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => PostItem(
            list[index].name, list[index].description, list[index].img),
        separatorBuilder: (context, index) => Container(
          height: 10,
          color: Colors.grey,
        ),
        itemCount: 3,
      ),
    );
  }
}
