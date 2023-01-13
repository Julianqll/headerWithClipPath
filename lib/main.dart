import 'package:flutter/material.dart';
import 'package:reto3_platzi/custom_appbar.dart';
import 'package:reto3_platzi/list_divider.dart';
import 'package:reto3_platzi/list_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomAppbar(),
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: ListView(
              children: const [
              ListItem(name:"Robert Downey Jr", movies: 10, image: "https://www.cinemascomics.com/wp-content/uploads/2020/10/robert-downey-jr-iron-man.jpg", available: false),
              ListDivider(),
              ListItem(name:"Chris Evans", movies: 5, image: "https://th.bing.com/th/id/OIP.rINickujddHOfoDDaHxLowHaLH?pid=ImgDet&rs=1", available: true),
              ListDivider(),
              ListItem(name:"Chris Hemsworth", movies: 4, image: "https://th.bing.com/th/id/OIP.ZrBjwVYfed3L8aO5jJeFvAHaKJ?pid=ImgDet&rs=1", available: true),
              ListDivider(),
              ListItem(name:"Tom Hiddleston", movies: 7, image: "https://th.bing.com/th/id/R.70f1d264e8707cff8dde13ca55fd1ef6?rik=QzRWiFXibRzmLg&pid=ImgRaw&r=0", available: true),
              ListDivider(),
              ListItem(name:"Tom Holland", movies: 5, image: "https://th.bing.com/th/id/R.27f2feedbceb441810fcb72055582396?rik=b7suztjElgjt%2fg&pid=ImgRaw&r=0", available: true),
              ],
            ),
          )
        ],
      ),
    );
  }
}
