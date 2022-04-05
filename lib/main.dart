import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      // home: Scaffold(
      //     appBar: AppBar(
      //       title: Text("Nerd"),
      //     ),
      //     body: Center(
      //       child:
      //           Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      //         Text(
      //           "Hello Flutter",
      //           style: TextStyle(fontSize: 50, color: Colors.blue),
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //             Image(
      //               image: NetworkImage(
      //                   'https://cdn.pixabay.com/photo/2022/03/07/18/41/forest-7054278_960_720.jpg'),
      //               width: 150,
      //             ),
      //             Image(
      //               image: NetworkImage(
      //                   'https://cdn.pixabay.com/photo/2022/03/07/18/41/forest-7054278_960_720.jpg'),
      //               width: 150,
      //             )
      //           ],
      //         )
      //       ]),
      //     )),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0; //การสร้าง State หรือตัวแปร

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Nerd"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "Hello Flutter",
              style: TextStyle(fontSize: 50, color: Colors.blue),
            ),
            Text(
              "Hello Flutter",
              style: TextStyle(fontSize: 50, color: Colors.blue),
            ),
            Text("กดปุ่มเพื่อเพิ่มจำนวน"),
            Text(
              "$number",
              style: TextStyle(fontSize: 40, color: Colors.red),
            )
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ));
  }
}
