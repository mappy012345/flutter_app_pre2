import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomePageState();
  }
}
// 登入頁面 ---------------------------------------------------------------------------------------------
class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("NTUT 321 Lab 後台監控系統"),),
        body: new Center(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 8,
                child:
                Container(
                  margin: EdgeInsets.only(top: 120),
                  child:
                  Text("後台系統", style: TextStyle(fontSize: 50),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 50),
                child:
                RaisedButton(
                    child: new Text("進入"),
                    onPressed: ()
                    {
                      Navigator.push(context, new MaterialPageRoute(builder:(context) => new MainScreen()),
                      );
                    }
                ),
              )


            ],
          ),
        )
    );
  }
}

class MainScreen extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainScreenState();


  }
}
class MainScreenState extends State<MainScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text("NTUT 321 Lab 後台監控系統"),),
        body: new Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50),
                child:
                RaisedButton(
                    child: new Text("藥品資料"),
                    onPressed: ()
                    {
                      Navigator.push(context, new MaterialPageRoute(builder: (context) => new MedicineData()),
                      );
                    }
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child:
                RaisedButton(
                    child: new Text("人員權限"),
                    onPressed: ()
                    {

                    }
                ),
              )
            ],
          ),
        )
    );
  }
}
//藥品資料讀取

class MedicineData extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MedicineDataState();
  }
}
class MedicineDataState extends State<MedicineData> {
  // 藥品新增用

  TextEditingController taskController1;
  TextEditingController taskController2;
  TextEditingController taskController3;
  TextEditingController taskController4;
  TextEditingController taskController5;
  TextEditingController taskController6;
  TextEditingController taskController7;
  TextEditingController taskController8;
  TextEditingController taskController9;
  TextEditingController taskController10;

  initState() {
    //初始化

    taskController1 = new TextEditingController();
    taskController2 = new TextEditingController();
    taskController3 = new TextEditingController();
    taskController4 = new TextEditingController();
    taskController5 = new TextEditingController();
    taskController6 = new TextEditingController();
    taskController7 = new TextEditingController();
    taskController8 = new TextEditingController();
    taskController9 = new TextEditingController();
    taskController10 = new TextEditingController();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
//    final width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("NTUT 321 Lab 後台監控系統"),),
      body: Scrollbar(
          child:SingleChildScrollView(   //讀入資料放入可提供水平滑動
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                  width:8000,
                  child: Column(
                      children: <Widget>[
                        SizedBox(
                          height:40,
                          child:
                          ListView(
                              shrinkWrap: true,
                              children: <Widget>[
                                ListTile(
                                  title:
                                  Row(
                                    children: <Widget>[
                       //藥品項目文字-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("資料修改",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("107項次",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("中文",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("健保價",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("健保單位",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("健保碼",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("國際條碼",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("廠商",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("成份",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("系統代碼",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("類型",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),

                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("數量",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("藥品圖片(裸)",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("藥品圖片(包裝1)",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("藥品圖片(包裝2)",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),


                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("定劑量",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("單位",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("住院給藥頻率",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("門診給藥頻率",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("住院劑型數量",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("使用途徑",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("預設給藥天數",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),

                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("適應症",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("注意事項",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("使用方法",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("不良反應",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("禁忌",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("藥物外觀",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("替代1",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("替代2",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("替代3",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("次極量",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("日極量",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),

                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("孕",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("腎",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("不可磨粉",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("不可撥半",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("不可咀嚼",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("易跌倒",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("TDM",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("ATC1",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("ATC2",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("ATC3",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("藥理性質分類代碼",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("藥理分類中文",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("抗生素",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("藥理分類",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("換算率",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("員榮廠商代碼",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child:
                                        Center(
                                          child:
                                          Text("蘇榮廠商代碼",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ]
                          ),
                        ),
                        Expanded(
                            child:

                            StreamBuilder<QuerySnapshot>(
                                stream: Firestore.instance.collection('DrugBank').snapshots(),
                                builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){
                                  if(!snapshot.hasData) return Text("loading...");

                                  return Scrollbar(
                                    child: ListView(
                                        padding: const EdgeInsets.all(5.0),
                                        scrollDirection: Axis.vertical, //讓list可以向下滑
                                        shrinkWrap: true,
                                        children: snapshot.data.documents.map((DocumentSnapshot document){
                 // 藥品資料更改用-----------------------------------------------------------------------------------------------------------------------------------------

                                          var item1= document["107項次"];  //取出原本firebase該欄位資料，當作修改訊息攔的原始文字
                                          var item2= document["中文"];
                                          var item3= document["健保價"];
                                          var item4= document["健保單位"];
                                          var item5= document["健保碼"];
                                          var item6= document["國際條碼"];
                                          var item7= document["廠商"];
                                          var item8= document["成份"];
                                          var item9= document["系統代碼"];
                                          var item10= document["類型"];

                                          TextEditingController fix1 = TextEditingController(text:item1);
                                          TextEditingController fix2 = TextEditingController(text:item2);
                                          TextEditingController fix3 = TextEditingController(text:item3);
                                          TextEditingController fix4 = TextEditingController(text:item4);
                                          TextEditingController fix5 = TextEditingController(text:item5);
                                          TextEditingController fix6 = TextEditingController(text:item6);
                                          TextEditingController fix7 = TextEditingController(text:item7);
                                          TextEditingController fix8 = TextEditingController(text:item8);
                                          TextEditingController fix9 = TextEditingController(text:item9);
                                          TextEditingController fix10 = TextEditingController(text:item10);
                                          void _fixDrugdata() async{
                                            return showDialog(
                                                context: context,
                                                builder: (BuildContext context){
                                                  return AlertDialog(
                                                    contentPadding: const EdgeInsets.all(6.0),
                                                    content: Column(
                                                      children: <Widget>[
                                                        Text("修改藥品資料"),
                                                        Expanded(
                                                          child: TextField(
                                                            decoration: InputDecoration(labelText: '107項次'),
                                                            controller: fix1,
                                                          )
                                                        ),
                                                        Expanded(
                                                            child: TextField(
                                                              decoration: InputDecoration(labelText: '中文'),
                                                              controller: fix2,
                                                            )
                                                        ),
                                                        Expanded(
                                                            child: TextField(
                                                              decoration: InputDecoration(labelText: '健保價'),
                                                              controller: fix3,
                                                            )
                                                        ),
                                                        Expanded(
                                                            child: TextField(
                                                              decoration: InputDecoration(labelText: '健保單位'),
                                                              controller: fix4,
                                                            )
                                                        ),
                                                        Expanded(
                                                            child: TextField(
                                                              decoration: InputDecoration(labelText: '健保碼'),
                                                              controller: fix5,
                                                            )
                                                        ),
                                                        Expanded(
                                                            child: TextField(
                                                              decoration: InputDecoration(labelText: '國際條碼'),
                                                              controller: fix6,
                                                            )
                                                        ),
                                                        Expanded(
                                                            child: TextField(
                                                              decoration: InputDecoration(labelText: '廠商'),
                                                              controller: fix7,
                                                            )
                                                        ),
                                                        Expanded(
                                                            child: TextField(
                                                              decoration: InputDecoration(labelText: '成份'),
                                                              controller: fix8,
                                                          )
                                                        ),
                                                        Expanded(
                                                            child: TextField(
                                                              decoration: InputDecoration(labelText: '系統代碼'),
                                                              controller: fix9,
                                                            )
                                                        ),
                                                        Expanded(
                                                            child: TextField(
                                                              decoration: InputDecoration(labelText: '類型'),
                                                              controller: fix10,
                                                            )
                                                        ),
                                                      ],
                                                    ),
                                                    actions: <Widget>[
                                                      FlatButton(
                                                        child: Text('取消修改'),
                                                        onPressed:()
                                                        {
                                                          Navigator.pop(context);
                                                        },
                                                      ),
                                                      FlatButton(
                                                        child: Text('修改資料'),
                                                        onPressed:()
                                                        {
                                                          Firestore.instance.collection("DrugBank").document(document.documentID).setData(
                                                            {
                                                              "107項次":fix1.text,
                                                              "中文":fix2.text,
                                                              "健保價":fix3.text,
                                                              "健保單位":fix4.text,
                                                              "健保碼":fix5.text,
                                                              "國際條碼":fix6.text,
                                                              "廠商":fix7.text,
                                                              "成份":fix8.text,
                                                              "系統代碼":fix9.text,
                                                              "類型":fix10.text,
                                                            }
                                                          )
                                                              .then((result)=>
                                                              {
                                                                Navigator.pop(context),
                                                              }
                                                          );
                                                        },
                                                      ),
                                                    ],
                                                  );
                                                       }
                                                     );
                                                  }
     //  資料修改設定結束---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     // 藥品資料傳輸開始
                                          var img =document["系統代碼"];
                                          var imguseA= "android/assets/$img.jpg";
                                          var imguse1= "android/assets/$img---1.jpg";
                                          var imguse2= "android/assets/$img---2.jpg";

                                          return ListTile(
                                            title: Row(

                                              children: <Widget>[
                                                Container(
                                                    width: 150,
                                                    child:
                                                    FloatingActionButton(
                                                      onPressed: _fixDrugdata,
                                                      tooltip: 'fix',
                                                      child: Icon(Icons.border_color),
                                                    )
                                                ),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["107項次"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["中文"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["健保價"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,

                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["健保單位"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["健保碼"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,

                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["國際條碼"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["廠商"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["成份"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,

                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["系統代碼"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["類型"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                  width:  150,
                                                  height: 50,
                                                  child:
                                                  RaisedButton(
                                                      child: new Text("詳細資料"),
                                                      onPressed: ()
                                                      {
                                                        Navigator.push(context, new MaterialPageRoute(builder:(context) => new NumberData()),
                                                        );
                                                      }
                                                  ),
                                                ),

                                                Container(
                                                    width: 150,
                                                    child: new Image.asset(
                                                      imguseA,
                                                      width: 80,
                                                      height: 80,
                                                    )
                                                ),

                                                Container(
                                                    width: 150,
                                                    child: new Image.asset(
                                                      imguse1,
                                                      width: 80,
                                                      height: 80,
                                                    )
                                                ),

                                                Container(
                                                    width: 150,
                                                    child: new  Image.asset(
                                                      imguse2,
                                                      width: 80,
                                                      height: 80,
                                                    )
                                                ),
                                                Container(
                                                    width: 150,

                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["定劑量"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                                                          )),)),
                                                Container(
                                                    width: 150,

                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["單位"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                                                          )),)),
                                                Container(
                                                    width: 150,

                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["住院給藥頻率"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["門診給藥頻率"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["住院劑型數量"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["使用途徑"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["預設給藥天數"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["適應症"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["注意事項"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),

                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["使用方法"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["不良反應"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["禁忌"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["藥物外觀"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["替代1"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["替代2"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["替代3"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["次極量"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["日極量"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["孕"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["腎"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["不可磨粉"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),

                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["不可撥半"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),

                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["不可咀嚼"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["易跌倒"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["TDM"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["ATC1"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["ATC2"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["ATC3"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["藥理性質分類代碼"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["藥理分類中文"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["抗生素"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["藥理分類"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["換算率"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(
                                                          TextSpan(
                                                            text: document["員榮廠商代碼"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                                Container(
                                                    width: 150,
                                                    child:
                                                    Center(
                                                      child:
                                                      Text.rich(

                                                          TextSpan(
                                                            text: document["蘇榮廠商代碼"],
                                                            style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),
                                                          )),)),
                                              ],
                                            ),
                                          );
                                                }
                                            ).toList(),
                                        ),
                                  );
                                }
                            )
                        )
                      ]
                  )
              )
          )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showDialog,
        tooltip: 'Add',
        child: Icon(Icons.add),

      ),

    );
  }
  _showDialog() async {
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            contentPadding: const EdgeInsets.all(16.0),
            content: Column(
              children: <Widget>[
                Text("新增藥品資料"),
                Expanded(child:
                  TextField(
                  decoration: InputDecoration(labelText: '輸入107項次'),
                  controller: taskController1,
                ),
                ),
                Expanded(child:
                  TextField(
                  autofocus: true,
                  decoration: InputDecoration(labelText: '輸入中文'),
                  controller: taskController2,
                ),
                ),

                Expanded(child:
                  TextField(
                  autofocus: true,
                  decoration: InputDecoration(labelText: '輸入健保價'),
                  controller: taskController3,
                ),
                ),
                Expanded(child:
                  TextField(
                  autofocus: true,
                  decoration: InputDecoration(labelText: '健保單位'),
                  controller: taskController4,
                ),
                ),
                Expanded(child:
                  TextField(
                  autofocus: true,
                  decoration: InputDecoration(labelText: '健保碼'),
                  controller: taskController5,
                ),
                ),
                Expanded(child:
                  TextField(
                  autofocus: true,
                  decoration: InputDecoration(labelText: '國際條碼'),
                  controller: taskController6,
                ),
                ),
                Expanded(child:
                  TextField(
                  autofocus: true,
                  decoration: InputDecoration(labelText: '廠商'),
                  controller: taskController7,
                ),
                ),
                Expanded(child:
                  TextField(
                  autofocus: true,
                  decoration: InputDecoration(labelText: '成份'),
                  controller: taskController8,
                ),
                ),
                Expanded(child:
                  TextField(
                  autofocus: true,
                  decoration: InputDecoration(labelText: '系統代碼'),
                  controller: taskController9,
                ),
                ),
                Expanded(child:
                 TextField(
                  autofocus: true,
                  decoration: InputDecoration(labelText: '類型'),
                  controller: taskController10,
                ),
                ),

              ],
            ),
            actions: <Widget>[
              FlatButton(
                  child: Text('Cancel'),
                  onPressed:(){
                    taskController1.clear();
                    taskController2.clear();
                    taskController3.clear();
                    taskController4.clear();
                    taskController5.clear();
                    taskController6.clear();
                    taskController7.clear();
                    taskController8.clear();
                    taskController9.clear();
                    taskController10.clear();
                    Navigator.pop(context);
                  }
              ),
              FlatButton(
                  child: Text('Add'),
                  onPressed: (){
                    if (taskController1.text.isNotEmpty && taskController2.text.isNotEmpty && taskController3.text.isNotEmpty && taskController4.text.isNotEmpty&&
                        taskController5.text.isNotEmpty && taskController6.text.isNotEmpty && taskController7.text.isNotEmpty && taskController8.text.isNotEmpty&&
                        taskController9.text.isNotEmpty && taskController10.text.isNotEmpty
                       ){
                      Firestore.instance.collection("DrugBank").add(
                          { "107項次":taskController1.text,
                            "中文":taskController2.text,
                            "健保價":taskController3.text,
                            "健保單位":taskController4.text,
                            "健保碼":taskController5.text,
                            "國際條碼":taskController6.text,
                            "廠商":taskController7.text,
                            "成份":taskController8.text,
                            "系統代碼":taskController9.text,
                            "類型":taskController10.text,


                          })
                      .then((result)=>
                      {
                        Navigator.pop(context),
                        taskController1.clear(),
                        taskController2.clear(),
                        taskController3.clear(),
                        taskController4.clear(),
                        taskController5.clear(),
                        taskController6.clear(),
                        taskController7.clear(),
                        taskController8.clear(),
                        taskController9.clear(),
                        taskController10.clear(),

                      }
                      );
                    }

                    else
                      {
                        taskController1.clear();
                        taskController2.clear();
                        taskController3.clear();
                        taskController4.clear();
                        taskController5.clear();
                        taskController6.clear();
                        taskController7.clear();
                        taskController8.clear();
                        taskController9.clear();
                        taskController10.clear();
                        Navigator.pop(context);
                      }
                  }
              )
            ],
          );
        }
    );
  }
}

class NumberData extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NumberDataDataState();
  }
}
class NumberDataDataState extends State<NumberData>
{


  Widget _buildList2(BuildContext context, DocumentSnapshot document) {
    /*void queryValues()
    {
      Firestore.instance
          .collection('DrugBank').document(document.documentID).collection('LotNumber')
          .snapshots();

    }
    @override
    initState() {
      super.initState();
      queryValues();
    }*/


    return ListTile(
      title: Row(

        children: <Widget>[


          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["批號"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["效期"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["發票條碼"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),
          Container(
              width: 150,

              child:
              Center(
                child:
                Text.rich(

                    TextSpan(
                      text: document["數量"],
                      style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w600),


                    )),)),



        ],
      ),
    );

  }

  @override

  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("NTUT 321 Lab 後台監控系統"),),
        body: Scrollbar(
            child:SingleChildScrollView(   //讀入資料放入可提供水平滑動
                scrollDirection: Axis.horizontal,

                child: SizedBox(
                    width:800,
                    child: Column(
                        children: <Widget>[

                          SizedBox(
                            height:40,
                            child:
                            ListView(
                                shrinkWrap: true,
                                children: <Widget>[
                                  ListTile(
                                    title:
                                    Row(
                                      children: <Widget>[

                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("批號",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("效期",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("發票條碼",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          child:
                                          Center(
                                            child:
                                            Text("數量",style:TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.w600,)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Expanded(
                              child:

                              StreamBuilder<QuerySnapshot>(
                                  stream: Firestore.instance.collection('DrugBank').document('Amaryl # 2mg').collection('LotNumber').snapshots(),

                                  builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot){
                                    if(!snapshot.hasData) return Text("loading...");
                                    List<DocumentSnapshot> docs = snapshot.data.documents;


                                    return Scrollbar(
                                      child: ListView.builder(

                                        //   padding: const EdgeInsets.all(5.0),
                                          scrollDirection: Axis.vertical, //讓list可以向下滑
                                          shrinkWrap: true,
                                          itemCount: docs.length,
                                          itemBuilder: (context, index){
                                            return Container(


                                              //  height: 200,
                                              //  放入標題內容,
                                              child: Column(

                                                children: <Widget>[

                                                  _buildList2(context, snapshot.data.documents[index]),





                                                ],


                                              ) ,
                                            );
                                          }),
                                    );
                                  }
                              )
                          )
                        ]
                    )
                )
            )
        )
    );
  }
}

