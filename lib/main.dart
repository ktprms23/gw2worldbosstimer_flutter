import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gw2timerflutter/timezonetranslate.dart';
import 'package:sprintf/sprintf.dart';
import 'bossinfo.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Time to fight GW2 Boss'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List<WorldBossInfo> currentList;
  List<WorldBossInfo> nextList;
  String currentBossTime;
  List<String> nextBossTime;
  int currentIndex;

  ///
  bool timerAlready = false;

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

  
  registerUpdateTimer() {
    if(timerAlready) return;
    timerAlready = true;

    Timer.periodic(Duration(minutes: 1), (timer) {
      setState(() {
        log('[HHSK] debug repeat update. ${DateTime.now().hour}:${DateTime.now().minute}');
      });

    });

  } // end method registerUpdateTimer



  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    refreshWorldBossesList();
    Widget w = buildBossList(currentList, true);
    //registerUpdateTimer();
    Timer(Duration(minutes: 1), () {
      setState(() {
        log('[HHSK] debug repeat update. ${DateTime.now().hour}:${DateTime.now().minute}');
      });

    });
    //log('${nextList.length}');
    //log('Boss List time: ${WorldBossStaticData.worldBossListTime.length}');
    //log('List time: ${WorldBossStaticData.listTime.length}');
/*
    List<Widget> list = [Text('Current Boss',)];
    list.add(buildBossList(currentList));
    list.add(Text('Next Boss',));
    list.add(buildBossList(nextList));
*/
   // final dateTime = DateTime.now().minute~/15;



    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            ListTile(
              title:
                Center(
                  child:
                      Container(
                        decoration: BoxDecoration(
                        color: Colors.black
                        ),
                        child: Text('Current Boss',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          backgroundColor: Colors.black,
                        ),
                      ),
        )

                ),
            ),
//Expanded(child: w),
            w,
            //buildBossList(currentList),
            ListTile(
              title:
                  Center(
                    child:
                    Text('Next Boss',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        backgroundColor: Colors.black,
                      ),
                    ),
                  )
            ),
            Expanded(child: buildBossList(nextList, false))


        ],
        ),


    );
  }

  Widget buildBossList(List<WorldBossInfo> bossInfos, bool current) {

    List<Widget> rows = new List<Widget>();
/*
    if( bossInfos.length <= 2 ) {
      rows.add(Text(
        'Current Boss',
        style: TextStyle(
            fontWeight: FontWeight.bold
        ),
      ));
    } else {
      rows.add(Text(
        'Next Boss',
        style: TextStyle(
            fontWeight: FontWeight.bold
        ),
      ));
    } // end if
*/
    for( int i = 0; i < bossInfos.length; i++ ) {
      rows.add(buildListRow(bossInfos[i], i, current));
    } // end for
    //return rows;
    return ListView(children: rows,shrinkWrap: true);


  }



  Widget buildListRow( WorldBossInfo bossInfo, int listIndex, bool current ) {
/*
    if( listIndex + currentIndex >= WorldBossStaticData.worldBossListTime.length ) {
      listIndex = listIndex + currentIndex - WorldBossStaticData.worldBossListTime.length;
    } else {
      listIndex = listIndex + currentIndex;
    } // end if

*/

    return ListTile(
      leading:
          WorldBossStaticData.worldBossIcon[bossInfo.bossIconID] != null ?
              WorldBossStaticData.worldBossIcon[bossInfo.bossIconID] :
              WorldBossStaticData.worldBossIcon[WorldBossStaticData.worldBossIcon.length-1],
      title:
          Row(
            children: [
              Text(
                '${ current ? '${sprintf('%02d', [TimeZoneTranslate.getTimeFromOffset8(int.parse(currentBossTime.substring(0, 2)))])}:${currentBossTime.substring(3, 5)}' :
                '${sprintf('%02d', [TimeZoneTranslate.getTimeFromOffset8(int.parse(nextBossTime[listIndex].substring(0, 2)))])}:${nextBossTime[listIndex].substring(3, 5)}' }    ',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                bossInfo.bossName,
                style: TextStyle(
                  color: bossInfo.hardCore ? Colors.red : Colors.black,
                ),
              ),
            ],
          ),

      subtitle:
      Text("${bossInfo.bossMap}  Map Level: ${bossInfo.bossLevel}"),

    );
  }

  refreshWorldBossesList() {

    if( currentList == null ) currentList = new List<WorldBossInfo>();
    else currentList.clear();

    if( nextList == null ) nextList = new List<WorldBossInfo>();
    else nextList.clear();

    if( nextBossTime == null ) nextBossTime = new List<String>();
    else nextBossTime.clear();


    final index = WorldBossStaticData.getIndexByNow();
    currentIndex = index;
    currentBossTime = WorldBossStaticData.listTime[currentIndex];

    //log('[HHSK] debug current index: $currentIndex');
    final currentIndexList = WorldBossStaticData.worldBossListTime[index];

    currentList.add( WorldBossStaticData.worldBossDataList[currentIndexList[0]] );
    if( currentIndexList.length > 1 ) {
      currentList.add( WorldBossStaticData.worldBossDataList[currentIndexList[1]] );
    } // end if

    for( var i = index + 1; i < WorldBossStaticData.worldBossListTime.length; i++ ) {

      final tmp = WorldBossStaticData.worldBossListTime[i];
      nextList.add( WorldBossStaticData.worldBossDataList[tmp[0]] );
      nextBossTime.add(WorldBossStaticData.listTime[i]);
      if( tmp.length > 1 ) {
        nextList.add( WorldBossStaticData.worldBossDataList[tmp[1]] );
        nextBossTime.add(WorldBossStaticData.listTime[i]);
      } // end if
      //log('[HHSK] debug index: ${i} time: ${WorldBossStaticData.listTime[i]}');
    } // end for

    //log('[HHSK] debug nextboss: ${i} time: ${WorldBossStaticData.listTime[i]}');

    for( var i = 0; i < index; i++ ) {
      final tmp = WorldBossStaticData.worldBossListTime[i];
      nextList.add( WorldBossStaticData.worldBossDataList[tmp[0]] );
      nextBossTime.add(WorldBossStaticData.listTime[i]);
      if( tmp.length > 1 ) {
        nextList.add( WorldBossStaticData.worldBossDataList[tmp[1]] );
        nextBossTime.add(WorldBossStaticData.listTime[i]);
      } // end if
      //log('[HHSK] debug second index: ${i} time: ${WorldBossStaticData.listTime[i]}');
    } // end for



  } // end method refreshWorldBossesList

} // end class _MyHomePageState
