// // import 'dart:math';
// // import 'dart:ui';
// // import 'food_menu.dart';
// import 'money_box.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "My App",

//       home: const MyHomePage(),
//       // home: Scaffold(
//       //     appBar: AppBar(
//       //       title: Text("Nerd"),
//       //     ),
//       //     body: Center(
//       //       child:
//       //           Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//       //         const Text(
//       //           "Hello Flutter",
//       //           style: TextStyle(fontSize: 50, color: Colors.blue),
//       //         ),
//       //         Row(
//       //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       //           children: const [
//       //             Image(
//       //               image: NetworkImage(
//       //                   'https://cdn.pixabay.com/photo/2022/03/07/18/41/forest-7054278_960_720.jpg'),
//       //               width: 150,
//       //             ),
//       //             Image(
//       //               image: NetworkImage(
//       //                   'https://cdn.pixabay.com/photo/2022/03/07/18/41/forest-7054278_960_720.jpg'),
//       //               width: 150,
//       //             )
//       //           ],
//       //         ),
//       //         const Image(
//       //           image: AssetImage("assets/images/img1.jpeg"),
//       //           width: 150,
//       //         ),
//       //       ]),
//       //     )),
//       theme: ThemeData(primarySwatch: Colors.green),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// // class _MyHomePageState extends State<MyHomePage> {
// //   int number = 0; //???????????????????????? State ??????????????????????????????

// //   @override
// //   Widget build(BuildContext context) {
// //     // ????????????????????????????????????????????????????????? ???????????????????????? Data ?????????????????????????????????????????????????????? children
// //     // List<Widget> data = [];
// //     // data.add(const Text("Hello Flutter",
// //     //     style: TextStyle(fontSize: 50, color: Colors.blue)));
// //     // data.add(const Text("???????????????????????????????????????????????????????????????"));
// //     // data.add(Text(
// //     //   "$number",
// //     //   style: const TextStyle(fontSize: 40, color: Colors.red),
// //     // ));
// //     // for (var i = 0; i < 100; i++) {
// //     //   data.add(Text("Flutter ${i + 1}"));
// //     // }

// //     return Scaffold(
// //         appBar: AppBar(
// //           title: const Text("Nerd"),
// //         ),
// //         // body: Center(
// //         //   // child: Column(
// //         //   //     mainAxisAlignment: MainAxisAlignment.start,  // ???????????????????????? Column ????????? Row ????????????????????????
// //         //   child: ListView(
// //         //       children: getData(15)),
// //         body: ListView.builder(
// //           itemBuilder: (BuildContext context, int index) {
// //             return ListTile(
// //               title: Text("????????????????????? ${index + 1}"),
// //             );
// //           },
// //           itemCount: 10,
// //         )

// //         // floatingActionButton: FloatingActionButton(
// //         //   onPressed: addNumber,
// //         //   child: const Icon(Icons.add),
// //         // )
// //         );
// //   }

// //   // void addNumber() {
// //   //   setState(() {
// //   //     number++;
// //   //   });
// //   // }

// //   // List<Widget> getData(int count) {
// //   //   List<Widget> data = [];
// //   //   for (var i = 0; i < count; i++) {
// //   //     // var menu = Text(
// //   //     //   "Flutter ${i + 1}",
// //   //     //   style: const TextStyle(fontSize: 30, color: Colors.pink),
// //   //     // );
// //   //     var menu = ListTile(
// //   //       title: Text(
// //   //         "????????????????????? ${i + 1}",
// //   //         style: const TextStyle(color: Colors.blue),
// //   //       ),
// //   //       subtitle: Text("??????????????????????????????????????? ${i + 1}"),
// //   //     );

// //   //     data.add(menu);
// //   //   }
// //   //   return data;
// //   // }
// // }

// // // ??????????????????????????????????????????????????????????????????????????????
// // class _MyHomePageState extends State<MyHomePage> {
// //   List<FoodMenu> menu = [
// //     FoodMenu("?????????????????????", "500", "assets/images/img1.jpeg"),
// //     FoodMenu("???????????????????????????", "80", "assets/images/img2.jpeg"),
// //     FoodMenu("???????????????", "60", "assets/images/img3.jpeg"),
// //     FoodMenu("???????????????", "40", "assets/images/img4.jpeg"),
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text("??????????????????????????????????????????")),
// //       body: ListView.builder(
// //         itemBuilder: (BuildContext context, int index) {
// //           FoodMenu food = menu[index];
// //           return ListTile(
// //             tileColor: Colors.lightBlue[50],
// //             leading: Image.asset(
// //               food.img,
// //               cacheWidth: 70,
// //               cacheHeight: 50,
// //             ),
// //             title: Text(
// //               food.name,
// //               style: const TextStyle(
// //                   color: Colors.black, fontWeight: FontWeight.bold),
// //             ),
// //             subtitle: Text(
// //               "???????????? ${food.price} ?????????",
// //               style: const TextStyle(color: Colors.black),
// //             ),
// //             onTap: () {
// //               print("???????????????????????????????????????????????????????????????????????? " + food.name);
// //             },
// //           );
// //         },
// //         itemCount: menu.length,
// //       ),
// //       backgroundColor: Colors.lightBlue[50],
// //     );
// //   }
// // }
// class _MyHomePageState extends State<MyHomePage> {
//   int number = 0; //???????????????????????? State ??????????????????????????????

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     print("????????????????????????????????? initstate");
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("????????????????????????????????? build");

//     return Scaffold(
//       appBar: AppBar(
//           title: const Text(
//         "?????????????????????????????????",
//         style: TextStyle(
//             fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
//       )),
//       // body: Padding(
//       //   padding: const EdgeInsets.all(8.0),
//       //   child: Column(
//       //     children: [
//       //       // Container(
//       //       //   padding: const EdgeInsets.all(10.0),
//       //       //   decoration: BoxDecoration(
//       //       //       color: Colors.blueAccent[100],
//       //       //       borderRadius: BorderRadius.circular(20)),
//       //       //   height: 120,
//       //       //   child: Row(
//       //       //     crossAxisAlignment: CrossAxisAlignment.center,
//       //       //     children: const [
//       //       //       Padding(
//       //       //         padding: EdgeInsets.all(8.0),
//       //       //         child: Text(
//       //       //           "??????????????????????????????",
//       //       //           style: TextStyle(
//       //       //               fontSize: 20,
//       //       //               color: Colors.white,
//       //       //               fontWeight: FontWeight.bold),
//       //       //         ),
//       //       //       ),
//       //       //       Expanded(
//       //       //         child: Text(
//       //       //           "10000",
//       //       //           style: TextStyle(
//       //       //               fontSize: 50,
//       //       //               color: Colors.white,
//       //       //               fontWeight: FontWeight.bold),
//       //       //           textAlign: TextAlign.right,
//       //       //         ),
//       //       //       ),
//       //       //     ],
//       //       //   ),
//       //       // ),
//       //       // Padding(
//       //       //   // padding: const EdgeInsets.symmetric(vertical: 5.0),
//       //       //   padding: const EdgeInsets.only(top: 5.0),
//       //       //   child:
//       //       //       // SizedBox(
//       //       //       //   height: 5.0,
//       //       //       // ),
//       //       //       Container(
//       //       //     padding: const EdgeInsets.all(10.0),
//       //       //     decoration: BoxDecoration(
//       //       //         color: Colors.green,
//       //       //         borderRadius: BorderRadius.circular(20)),
//       //       //     height: 100,
//       //       //     child: Row(
//       //       //       children: const [
//       //       //         Padding(
//       //       //           padding: EdgeInsets.all(8.0),
//       //       //           child: Text(
//       //       //             "??????????????????",
//       //       //             style: TextStyle(
//       //       //                 fontSize: 20,
//       //       //                 color: Colors.white,
//       //       //                 fontWeight: FontWeight.bold),
//       //       //           ),
//       //       //         ),
//       //       //         Expanded(
//       //       //           child: Text(
//       //       //             "15000",
//       //       //             style: TextStyle(
//       //       //                 fontSize: 40,
//       //       //                 color: Colors.white,
//       //       //                 fontWeight: FontWeight.bold),
//       //       //             textAlign: TextAlign.right,
//       //       //           ),
//       //       //         ),
//       //       //       ],
//       //       //     ),
//       //       //   ),
//       //       // ),
//       //       // Padding(
//       //       //   padding: const EdgeInsets.only(top: 5.0),
//       //       //   child: Container(
//       //       //     padding: const EdgeInsets.all(10.0),
//       //       //     decoration: BoxDecoration(
//       //       //         color: Colors.orange,
//       //       //         borderRadius: BorderRadius.circular(20)),
//       //       //     height: 100,
//       //       //     child: Row(
//       //       //       children: const [
//       //       //         Padding(
//       //       //           padding: EdgeInsets.all(8.0),
//       //       //           child: Text(
//       //       //             "?????????????????????",
//       //       //             style: TextStyle(
//       //       //                 fontSize: 20,
//       //       //                 color: Colors.white,
//       //       //                 fontWeight: FontWeight.bold),
//       //       //           ),
//       //       //         ),
//       //       //         Expanded(
//       //       //           child: Text(
//       //       //             "5000",
//       //       //             style: TextStyle(
//       //       //                 fontSize: 40,
//       //       //                 color: Colors.white,
//       //       //                 fontWeight: FontWeight.bold),
//       //       //             textAlign: TextAlign.right,
//       //       //           ),
//       //       //         ),
//       //       //       ],
//       //       //     ),
//       //       //   ),
//       //       // ),
//       //       // Padding(
//       //       //   padding: const EdgeInsets.only(top: 5.0),
//       //       //   child: Container(
//       //       //     padding: const EdgeInsets.all(10.0),
//       //       //     decoration: BoxDecoration(
//       //       //         color: Colors.red[200],
//       //       //         borderRadius: BorderRadius.circular(20)),
//       //       //     height: 100,
//       //       //     child: Row(
//       //       //       children: const [
//       //       //         Padding(
//       //       //           padding: EdgeInsets.all(8.0),
//       //       //           child: Text(
//       //       //             "????????????????????????????????????",
//       //       //             style: TextStyle(
//       //       //                 fontSize: 20,
//       //       //                 color: Colors.white,
//       //       //                 fontWeight: FontWeight.bold),
//       //       //           ),
//       //       //         ),
//       //       //         Expanded(
//       //       //           child: Text(
//       //       //             "1200",
//       //       //             style: TextStyle(
//       //       //                 fontSize: 40,
//       //       //                 color: Colors.white,
//       //       //                 fontWeight: FontWeight.bold),
//       //       //             textAlign: TextAlign.right,
//       //       //           ),
//       //       //         ),
//       //       //       ],
//       //       //     ),
//       //       //   ),
//       //       // ),
//       //       MoneyBox("??????????????????????????????", 10000, Colors.blueAccent, 120),
//       //       const SizedBox(
//       //         height: 8,
//       //       ),
//       //       MoneyBox("??????????????????", 15000, Colors.green, 90),
//       //       const SizedBox(
//       //         height: 8,
//       //       ),
//       //       MoneyBox("?????????????????????", 5000, Colors.orange, 90),
//       //       const SizedBox(
//       //         height: 8,
//       //       ),
//       //       MoneyBox("????????????????????????????????????", 1200,
//       //           const Color.fromARGB(255, 239, 154, 154), 90),
//       //     ],
//       // ),
//       body: Column(
//         children: [
//           Text(
//             "$number",
//             style: TextStyle(fontSize: 40),
//           )
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             number++;
//           });
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() async {
//   //login
//   print(await getUserName());
//   print("??????????????????????????????????????????");
// }

// // String getUserName() {
// //   //???????????????????????????
// //   var name = getDataInDB();
// //   return name;
// // }

// // String getDataInDB() {
// //   //???????????????????????????
// //   return "Boonyasith";
// // }

// Future<String> getUserName() async {
//   //??????????????????????????? ?????????????????? 10 ??????????????????????????? getDataInDB ??????????????????????????????????????????
//   var name = await getDataInDB();
//   return name;
// }

// Future<String> getDataInDB() {
//   return Future.delayed(const Duration(seconds: 2), () => "Boonyasith");
// }

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'covid_situation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My App",
      home: const MyHomePage(),
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
  late Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    // getExchangeRate();
    futureAlbum = fetchAlbum();
  }

  Future<Album> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Album.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("?????????????????????",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black))),
      body: Center(
        child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data!.title.toString());
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            // By default, show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
