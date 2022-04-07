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
// //   int number = 0; //การสร้าง State หรือตัวแปร

// //   @override
// //   Widget build(BuildContext context) {
// //     // ส่วนการเตรียมข้อมูล เก็บลงใน Data ก่อนนำเข้าไปแสดงใน children
// //     // List<Widget> data = [];
// //     // data.add(const Text("Hello Flutter",
// //     //     style: TextStyle(fontSize: 50, color: Colors.blue)));
// //     // data.add(const Text("กดปุ่มเพื่อเพิ่มจำนวน"));
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
// //         //   //     mainAxisAlignment: MainAxisAlignment.start,  // ใช้ได้ใน Column กับ Row เท่านั้น
// //         //   child: ListView(
// //         //       children: getData(15)),
// //         body: ListView.builder(
// //           itemBuilder: (BuildContext context, int index) {
// //             return ListTile(
// //               title: Text("เมนูที่ ${index + 1}"),
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
// //   //         "เมนูที่ ${i + 1}",
// //   //         style: const TextStyle(color: Colors.blue),
// //   //       ),
// //   //       subtitle: Text("รายการย่อยที่ ${i + 1}"),
// //   //     );

// //   //     data.add(menu);
// //   //   }
// //   //   return data;
// //   // }
// // }

// // // ลองแสดงผลการเลือกเมนูอาหาร
// // class _MyHomePageState extends State<MyHomePage> {
// //   List<FoodMenu> menu = [
// //     FoodMenu("กุ้งเผา", "500", "assets/images/img1.jpeg"),
// //     FoodMenu("กะเพราหมู", "80", "assets/images/img2.jpeg"),
// //     FoodMenu("ส้มตำ", "60", "assets/images/img3.jpeg"),
// //     FoodMenu("ผัดไท", "40", "assets/images/img4.jpeg"),
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text("เลือกเมนูอาหาร")),
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
// //               "ราคา ${food.price} บาท",
// //               style: const TextStyle(color: Colors.black),
// //             ),
// //             onTap: () {
// //               print("คุณเลือกเมนูอาหารชื่อว่า " + food.name);
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
//   int number = 0; //การสร้าง State หรือตัวแปร

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     print("เรียกใช้งาน initstate");
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("เรียกใช้งาน build");

//     return Scaffold(
//       appBar: AppBar(
//           title: const Text(
//         "บัญชีของฉัน",
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
//       //       //           "ยอดคงเหลือ",
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
//       //       //             "รายรับ",
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
//       //       //             "รายจ่าย",
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
//       //       //             "ค้างชำระเงิน",
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
//       //       MoneyBox("ยอดคงเหลือ", 10000, Colors.blueAccent, 120),
//       //       const SizedBox(
//       //         height: 8,
//       //       ),
//       //       MoneyBox("รายรับ", 15000, Colors.green, 90),
//       //       const SizedBox(
//       //         height: 8,
//       //       ),
//       //       MoneyBox("รายจ่าย", 5000, Colors.orange, 90),
//       //       const SizedBox(
//       //         height: 8,
//       //       ),
//       //       MoneyBox("ค้างชำระเงิน", 1200,
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
//   print("ทำงานอื่นต่อไป");
// }

// // String getUserName() {
// //   //ดึงข้อมูล
// //   var name = getDataInDB();
// //   return name;
// // }

// // String getDataInDB() {
// //   //ได้ข้อมูล
// //   return "Boonyasith";
// // }

// Future<String> getUserName() async {
//   //ดึงข้อมูล แล้วรอ 10 วินาทีให้ getDataInDB ทำงานเสร็จก่อน
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
          title: const Text("อัลบั้ม",
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
