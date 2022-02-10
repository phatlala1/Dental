import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'ข้อมูลทันตกรรม'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:
      SingleChildScrollView(
        child: Container(

          padding: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 10),
          margin: EdgeInsets.only(top: 35, left: 10, right: 10),
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                // A fixed-height child.
                height: 60.0,
                alignment: Alignment.centerLeft,
                child: const Text('1. ฟันคืออะไร?',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'TH Sarabun psk',
                    fontSize: 24))
              ),
              Container(margin: const EdgeInsets.only(top:30),
                // Another fixed-height child.
                  child: new Image.asset('assets/1.jpg')
              ),
              Container(
                // A fixed-height child.
                  height: 1000,
                  alignment: Alignment.centerLeft,
                  child: const Text('-  มีชั้นเคลือบฟัน  (Enamel)  เป็นส่วนที่อยู่นอกสุดและมีความแข็งที่สุดของฟัน  ทำหน้าที่รับน้ำหนักในการบดเคี้ยว\n\nมีโครงสร้างเป็นผลึก ไม่มีเส้นเลือดและเส้นประสาท จึงเป็นส่วนที่ไม่ได้รับความรู้สึก เวลาที่ฟันเริ่มผุจึงไม่มีอาการเจ็บปวดใดๆ\n\n- ชั้นเนื้อฟัน (Dentine) เป็นส่วนที่อยู่ถัดจากเข้ามา ประกอบด้วยท่อเล็ก ๆ จำนวนมาก ซึ่งเป็นที่รวมของเส้นประสาทรับความรู้สึก ดังนั้นเวลาฟันผุถึงชั้นนี้ ผู้ป่วยจะเริ่มมีอาการเสียวฟั\n\n- โพรงประสาทฟัน   (Pulp) คือ โพรงช่องว่างภายในฟัน เป็นที่อยู่ของเส้นประสาท และเส้นเลือดที่มาหล่อเลี้ยงตัวฟัน ทำหน้าที่ในการรับความรู้สึกร้อน เย็น ปวด เจ็บ กรณีที่ฟันผุมาถึงชั้นนี้ จะไม่สามารถอุดฟันได้\n\n- ชั้นร่องเหงือก (Gingival crevice) คือ ร่องระหว่างตัวฟันกับขอบเหงือก ปกติจะมีขอบบาง มีความลึกประมาณ 2 มิลลิเมตร แต่ถ้ามีโรคเหงือกอักเสบ หรือเป็นรำมะนาด อาจมีอาการบวม ทำให้ร่องนี้ลึกขึ้น และเกิดการอักเสบมากขึ้นได้\n\n- เหงือก (Gingiva) คือ ส่วนเนื้อเยื่อที่หุ้มตัวฟัน และกระดูกขากรรไกรไว้\n\n- เคลือบรากฟัน (Cementum) เป็นชั้นบาง ๆ คลุมเนื้อฟันบริเวณรากฟันไว้ แตกต่างจากเคลือบฟันตรงที่มีความแข็งแรงน้อยกว่า ปกติจะฝังตัวอยู่ในกระดูก แต่ถ้ามีเหงือกร่น หรือเกิดโรครำมะนาด อาจทำให้ส่วนนี้สัมผัสกับน้ำและอากาศ เกิดอาการเสียวฟันได้ กระดูกเบ้ารากฟัน (Alveolar bone) คือส่วนของกระดูกที่รองรับรากฟัน',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'TH Sarabun psk',
                      fontSize: 24))
              ),
            ],
          ),
          /*child: Text(
              '1. ฟันคืออะไร?\n\n\n\nฟันเป็นอวัยวะพิเศษที่เจริญมาจากเนื้อเยื่อชั้นนอก (Ectoderm) เช่นเดียวกับผิวหนังหรือเกร็ดของปลา ฟันมี 2 ชุด คือฟันแท้และฟันน้ำนม ซึ่งมีโครงสร้างคล้าย ๆ กันดังนี้ -  มีชั้นเคลือบฟัน  (Enamel)  เป็นส่วนที่อยู่นอกสุดและมีความแข็งที่สุดของฟัน  ทำหน้าที่รับน้ำหนักในการบดเคี้ยว\n\nมีโครงสร้างเป็นผลึก ไม่มีเส้นเลือดและเส้นประสาท จึงเป็นส่วนที่ไม่ได้รับความรู้สึก เวลาที่ฟันเริ่มผุจึงไม่มีอาการเจ็บปวดใดๆ\n\n- ชั้นเนื้อฟัน (Dentine) เป็นส่วนที่อยู่ถัดจากเข้ามา ประกอบด้วยท่อเล็ก ๆ จำนวนมาก ซึ่งเป็นที่รวมของเส้นประสาทรับความรู้สึก ดังนั้นเวลาฟันผุถึงชั้นนี้ ผู้ป่วยจะเริ่มมีอาการเสียวฟัน\n\n- โพรงประสาทฟัน   (Pulp) คือ โพรงช่องว่างภายในฟัน เป็นที่อยู่ของเส้นประสาท และเส้นเลือดที่มาหล่อเลี้ยงตัวฟัน ทำหน้าที่ในการรับความรู้สึกร้อน เย็น ปวด เจ็บ กรณีที่ฟันผุมาถึงชั้นนี้ จะไม่สามารถอุดฟันได้\n\n- ชั้นร่องเหงือก (Gingival crevice) คือ ร่องระหว่างตัวฟันกับขอบเหงือก ปกติจะมีขอบบาง มีความลึกประมาณ 2 มิลลิเมตร แต่ถ้ามีโรคเหงือกอักเสบ หรือเป็นรำมะนาด อาจมีอาการบวม ทำให้ร่องนี้ลึกขึ้น และเกิดการอักเสบมากขึ้นได้\n\n- เหงือก (Gingiva) คือ ส่วนเนื้อเยื่อที่หุ้มตัวฟัน และกระดูกขากรรไกรไว้- เคลือบรากฟัน (Cementum) เป็นชั้นบาง ๆ คลุมเนื้อฟันบริเวณรากฟันไว้ แตกต่างจากเคลือบฟันตรงที่มีความแข็งแรงน้อยกว่า ปกติจะฝังตัวอยู่ในกระดูก แต่ถ้ามีเหงือกร่น หรือเกิดโรครำมะนาด อาจทำให้ส่วนนี้สัมผัสกับน้ำและอากาศ เกิดอาการเสียวฟันได้ กระดูกเบ้ารากฟัน (Alveolar bone) คือส่วนของกระดูกที่รองรับรากฟัน',
            style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
              fontFamily: 'TH Sarabun psk',
            fontSize: 24,
          ),),*/


        ),
      ),
    );
  }
}
