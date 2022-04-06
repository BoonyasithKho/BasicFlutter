import 'dart:math';
import 'dart:ui';
import 'food_menu.dart';
import 'package:flutter/material.dart';

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
      // home: Scaffold(
      //     appBar: AppBar(
      //       title: Text("Nerd"),
      //     ),
      //     body: Center(
      //       child:
      //           Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      //         const Text(
      //           "Hello Flutter",
      //           style: TextStyle(fontSize: 50, color: Colors.blue),
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: const [
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
      //         ),
      //         const Image(
      //           image: AssetImage("assets/images/img1.jpeg"),
      //           width: 150,
      //         ),
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

// class _MyHomePageState extends State<MyHomePage> {
//   int number = 0; //การสร้าง State หรือตัวแปร

//   @override
//   Widget build(BuildContext context) {
//     // ส่วนการเตรียมข้อมูล เก็บลงใน Data ก่อนนำเข้าไปแสดงใน children
//     // List<Widget> data = [];
//     // data.add(const Text("Hello Flutter",
//     //     style: TextStyle(fontSize: 50, color: Colors.blue)));
//     // data.add(const Text("กดปุ่มเพื่อเพิ่มจำนวน"));
//     // data.add(Text(
//     //   "$number",
//     //   style: const TextStyle(fontSize: 40, color: Colors.red),
//     // ));
//     // for (var i = 0; i < 100; i++) {
//     //   data.add(Text("Flutter ${i + 1}"));
//     // }

//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Nerd"),
//         ),
//         // body: Center(
//         //   // child: Column(
//         //   //     mainAxisAlignment: MainAxisAlignment.start,  // ใช้ได้ใน Column กับ Row เท่านั้น
//         //   child: ListView(
//         //       children: getData(15)),
//         body: ListView.builder(
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               title: Text("เมนูที่ ${index + 1}"),
//             );
//           },
//           itemCount: 10,
//         )

//         // floatingActionButton: FloatingActionButton(
//         //   onPressed: addNumber,
//         //   child: const Icon(Icons.add),
//         // )
//         );
//   }

//   // void addNumber() {
//   //   setState(() {
//   //     number++;
//   //   });
//   // }

//   // List<Widget> getData(int count) {
//   //   List<Widget> data = [];
//   //   for (var i = 0; i < count; i++) {
//   //     // var menu = Text(
//   //     //   "Flutter ${i + 1}",
//   //     //   style: const TextStyle(fontSize: 30, color: Colors.pink),
//   //     // );
//   //     var menu = ListTile(
//   //       title: Text(
//   //         "เมนูที่ ${i + 1}",
//   //         style: const TextStyle(color: Colors.blue),
//   //       ),
//   //       subtitle: Text("รายการย่อยที่ ${i + 1}"),
//   //     );

//   //     data.add(menu);
//   //   }
//   //   return data;
//   // }
// }

// ลองแสดงผลการเลือกเมนูอาหาร
class _MyHomePageState extends State<MyHomePage> {
  List<FoodMenu> menu = [
    FoodMenu("กุ้งเผา", "500", "assets/images/img1.jpeg"),
    FoodMenu("กะเพราหมู", "80", "assets/images/img2.jpeg"),
    FoodMenu("ส้มตำ", "60", "assets/images/img3.jpeg"),
    FoodMenu("ผัดไท", "40", "assets/images/img4.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("เลือกเมนูอาหาร")),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          FoodMenu food = menu[index];
          return ListTile(
            tileColor: Colors.grey,
            leading: Image.asset(
              food.img,
              cacheWidth: 70,
              cacheHeight: 50,
            ),
            title: Text(
              food.name,
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "ราคา ${food.price} บาท",
              style: const TextStyle(color: Colors.white),
            ),
            onTap: () {
              print("คุณเลือกเมนูอาหารชื่อว่า " + food.name);
            },
          );
        },
        itemCount: menu.length,
      ),
      backgroundColor: Colors.grey,
    );
  }
}
