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
                    style: TextStyle(color: Colors.white, fontSize: 22,fontWeight: FontWeight.bold,)
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
                  Text("ข้อมูลส่วนตัว"
                    ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                      SizedBox(width: 10,),
                      Column(
                        children: [Text("เบอร์โทรศัพท์"), Text("064-8625950", style: TextStyle(fontWeight: FontWeight.bold),)],
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
                      SizedBox(width: 10,),
                      Column(
                        children: [Text("วันเกิด"), Text("2 มีนาคม 2549", style: TextStyle(fontWeight: FontWeight.bold))],
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
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.cake, color: Colors.pink),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [Text("วันเกิด"), Text("2 มีนาคม 2549", style: TextStyle(fontWeight: FontWeight.bold))],
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
                        child: Icon(Icons.help_outline, color: Colors.purple),
                      ),
                      SizedBox(width: 10,),
                      Column(
                        children: [Text("การศึกษา"), Text("วิทยาลัยเทคโนโลยีภาคตะวันออก (อี.เทค)", style: TextStyle(fontWeight: FontWeight.bold))],
                      ),

                    ],
                  ),
                  SizedBox(height: 18),
                  ElevatedButton(onPressed : () => Navigator.pushNamed(context, '/second'),
                      child: Text('Go to Second', style: TextStyle(color: Colors.white),),
                    style:ElevatedButton.styleFrom(backgroundColor: Colors.blue) ,
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
    return Scaffold(body: Center(child: Text("Second Page")));
  }
}
