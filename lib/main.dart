import 'package:flutter/material.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        fontFamily: "NotoSansThai",
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/second': (context) => const SecondPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.deepPurpleAccent),
              child: Column(
                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.network(
                        "https://i.pinimg.com/videos/thumbnails/originals/91/7a/6f/917a6fcd9bcf809563da549ddc2105b0.0000000.jpg",
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Pannawit Kittisoponpan",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "pannawit.kittisoponpan@e-tech.ac.th",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    "ข้อมูลส่วนตัว",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.phone, color: Colors.green),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("เบอร์โทรศัพท์"),
                          Text(
                            "064-862-5950",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //อันที่2
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.cake, color: Colors.pink),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("วันเกิด"),
                          Text(
                            "2 มีนาคม 2549",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //3
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.location_on, color: Colors.orange),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("ที่อยู่"),
                          Text(
                            "ชลบุรี",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //4
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.school, color: Colors.purple),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("การศึกษา"),
                          Text(
                            "วิทยาลัยเทคโนโลยีภาคตะวันออก (อี.เทค)",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/second'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      fixedSize: Size(500, 20),
                    ),
                    child: Text(
                      'ไปยังหน้า 2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(4),
                        child: ClipOval(
                          child: Image.network(
                            "https://i.pinimg.com/videos/thumbnails/originals/91/7a/6f/917a6fcd9bcf809563da549ddc2105b0.0000000.jpg",
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "24",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "กำลังติดตาม",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 1,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.symmetric(
                            vertical: BorderSide(
                              color: Colors.grey.shade400,
                              width: 2,
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "179",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "ผู้ติดตาม",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "3",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "ถูกใจและบันทึก",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Row(
                      children: [
                        Text(
                          "Pannawit_Kittisoponpan ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.verified, color: Colors.blue),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.tiktok,
                          color: Colors.grey.shade500,
                          size: 13,
                        ),
                        Text(
                          " pannawit31 ",
                          style: TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.grey.shade500,
                          size: 13,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  //ปุ่ม
                  Container(
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () => Navigator.pushNamed(context, '#'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurpleAccent,
                            fixedSize: Size(300, 20),
                          ),
                          child: Text(
                            'ติดตาม',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        SizedBox(width: 20),
                        Icon(Icons.share, color: Colors.black),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child:
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                  child: Image.network(
                                    "https://i.pinimg.com/videos/thumbnails/originals/91/7a/6f/917a6fcd9bcf809563da549ddc2105b0.0000000.jpg",
                                    width: 180,
                                    height: 180,
                                    fit: BoxFit.cover,
                                  ),
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                  child: Image.network(
                                    "https://i.pinimg.com/videos/thumbnails/originals/91/7a/6f/917a6fcd9bcf809563da549ddc2105b0.0000000.jpg",
                                    width: 180,
                                    height: 180,
                                    fit: BoxFit.cover,
                                  ),
                              ),
                            ],
                          ),
                        ],
                      )
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
