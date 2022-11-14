import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer();

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    Center(child: screen1()),
    Center(child: screen2()),
    Center(child: screen3()),
    Center(child: screen4()),
  ];

  int _currentindex=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Midterm'),),
        body: tabs[_currentindex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18.0,
          unselectedFontSize: 14.0,
          iconSize: 30.0,
          currentIndex: _currentindex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),
                                    label: 'Home',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.book_outlined),
                                    label: '學習歷程',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.fact_check_outlined),
                                    label: '未來目標',
                                    ),
            BottomNavigationBarItem(icon: Icon(Icons.fork_right),
                                    label: '專案方向',
                                    ),
          ],
          onTap: (index) { setState(() {
                                       _currentindex=index;
                                       if (index!=0) {
                                         player.stop();
                                       }
                         });
        },
      ),
      ),
    );
  }
}
class screen1 extends StatelessWidget {

  final String s1='我是周青松，來自台南，從小由父母的觀念帶著我成長，父親是屬於認真嚴謹認為好還要更好的觀念，而母親是屬於要求我品行端正，基於家庭，再加上我強烈的好奇心，在一次偶然接觸到資訊科技這一塊領域得時候我的好奇心促使我踏進了這個未知的世界。';

  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("1.mp3"));

    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Who am I",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          //文字自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.blueGrey,
                  offset: Offset(6, 6)),
              ],),
            child:Text(s1,
              style: TextStyle(fontSize: 30,color: Colors.white),),
          ),
          Container(
            width: 500,
            height: 250,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.purple,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage('images/1.jpg'),
                fit: BoxFit.cover ,
              ),
              color: Colors.white,
            ),
          ),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}
String learn_experience="台南市 新營高工";
String learn_experience_1="高雄市 高雄科技大學";
class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      player.play(AssetSource("2.mp3"));
      return SingleChildScrollView(
        child: Column(
            children:<Widget>[
        //先放個標題
        Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Text("學習歷程",
            style: TextStyle(fontSize:24,
              fontWeight:FontWeight.bold,)),
      ),
      Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
      decoration: BoxDecoration(
      border: Border.all(color: Colors.blueGrey, width: 3),
      borderRadius: BorderRadius.circular(8),
      boxShadow: [ BoxShadow(color: Colors.blueGrey,
      offset: Offset(6, 6)),
      ],),
      child:Text(learn_experience,
      style: TextStyle(fontSize: 35,color: Colors.white),),
      ),
      SizedBox(height: 30,),
      Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey, width: 3),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [ BoxShadow(color: Colors.blueGrey,
              offset: Offset(6, 6)),
          ],),
        child:Text(learn_experience_1,
          style: TextStyle(fontSize: 35,color: Colors.white),),
      ),
      SizedBox(height: 30,),
      //一列放兩個圖
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.purple,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage('images/2.jpg'),
                fit: BoxFit.cover ,
              ),
              color: Colors.white,
            ),
          ),
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.purple,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage('images/3.jpg'),
                fit: BoxFit.contain ,
              ),
              color: Colors.white,
            ),
          ),
        ],
      ),
            ],
        ),
      );
  }
}

class screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("3.mp3"));
    return SingleChildScrollView(
      child:Column(
        children: [
          //有多種排版方式, 此處以最直覺的方式將每一列放文字內容
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大一時期",style: TextStyle(fontSize: 20)),],

          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    height: 200,
                    width: 300,
                  child: ListView(
                    children: [
                      //條列式參考
                      Text('1. 人際關係',style: TextStyle(fontSize: 25)),
                      Text('2. 學好數位邏輯',style: TextStyle(fontSize: 25)),
                      Text('3. 適應新環境',style: TextStyle(fontSize: 25)),
                      Text('4. 人際關係',style: TextStyle(fontSize: 25)),

                    ],

                  ),
                ),
              ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大二時期",style: TextStyle(fontSize: 20)),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 300,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 學習AI',style: TextStyle(fontSize: 25)),
                    Text('2. 學好資料結構',style: TextStyle(fontSize: 25)),
                    Text('3. 成績進前10%',style: TextStyle(fontSize: 25)),
                    Text('4. 考去證照',style: TextStyle(fontSize: 25)),

                  ],

                ),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大三時期",style: TextStyle(fontSize: 20)),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 300,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 實作專題',style: TextStyle(fontSize: 25)),
                    Text('2. 學好APP',style: TextStyle(fontSize: 25)),
                    Text('3. 提高多益分數',style: TextStyle(fontSize: 25)),
                    Text('4. 多花時間於技術研究',style: TextStyle(fontSize: 25)),

                  ],

                ),
              ),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text("大四時期",style: TextStyle(fontSize: 20)),],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 300,
                child: ListView(
                  children: [
                    //條列式參考
                    Text('1. 學分都滿了',style: TextStyle(fontSize: 25)),
                    Text('2. 準備下一階段規劃',style: TextStyle(fontSize: 25)),
                    Text('3. 可以獨立完成專案',style: TextStyle(fontSize: 25)),
                    Text('4. 繼續加深專業',style: TextStyle(fontSize: 25)),

                  ],

                ),
              ),
            ],),
        ],
      ),);
  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    player.play(AssetSource("4.mp3"));
    final String project_info="油價查詢系統";
    final String project_content="即時查詢油價，並透過圖表查看歷史價格。";
    return SingleChildScrollView(
      child: Column(
        children:<Widget>[
          //先放個標題
          Padding(padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text("Project info",
                style: TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,)),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.blueGrey,
                  offset: Offset(6, 6)),
              ],),
            child:Text(project_info,
              style: TextStyle(fontSize: 35,color: Colors.white),),
          ),
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey, width: 3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [ BoxShadow(color: Colors.blueGrey,
                  offset: Offset(6, 6)),
              ],),
            child:Text(project_content,
              style: TextStyle(fontSize: 35,color: Colors.white),),
          ),
          Container(
            width: 500,
            height: 500,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.purple,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage('images/4.jpg'),
                // fit: BoxFit.contain ,
              ),
              color: Colors.white,
            ),
          ),
          SizedBox(height: 30,),
        ],
      ),
    );
  }
}
