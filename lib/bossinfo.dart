
import 'package:flutter/material.dart';
class WorldBossInfo {

  final String bossName;
  final String bossMap;
  final String bossLevel;
  final int bossIconID;
  final bool hardCore;

  WorldBossInfo(this.bossName, this.bossMap, this.bossLevel, this.bossIconID, this.hardCore );

}

///
///     public final String [] ALL_BOSS_DATA = {
// 			"Taidha Covington,海賊女王,45 ~ 55,Bloodtide Coast,Normal,8:00,11:00,14:00,17:00,20:00,23:00,2:00,5:00",
// 			"Tequatl,殭屍毒龍,55 ~ 65,Sparkfly Fen,Hardcore,8:00,11:00,15:00,19:30,0:00,3:00",
// 			"Svanir Shaman,冰薩滿,1 ~ 15,Wayfarer Foothills,Normal,8:15,10:15,12:15,14:15,16:15,18:15,20:15,22:15,0:15,2:15,4:15,6:15",
// 			"Megadestroyer,火山王,60 ~ 70,Mount Maelstrom,Mormal,8:30,11:30,14:30,17:30,20:30,23:30,2:30,5:30",
// 			"Fire Elemental,火元素,1 ~ 15,Metrica Province,Normal,8:45,10:45,12:45,14:45,16:45,18:45,20:45,22:45,0:45,2:45,4:45,6:45",
// 			"Shatterer,水晶龍,45 ~ 55,Blazeridge Steppes,Normal,9:00,12:00,15:00,18:00,21:00,0:00,3:00,6:00",
// 			"Evolved Jungle Wurm,三隻大蟲,45 ~ 55,Bloodtide Coast,Hardcore,9:00,12:00,16:00,20:30,1:00,4:00",
// 			"Jungle Wurm,大蟲,1 ~ 15,Caledon Forest,Normal,9:15,11:15,13:15,15:15,17:15,19:15,21:15,23:15,1:15,3:15,5:15,7:15",
// 			"Modniir Ulgoth,人馬王,45 ~ 55,Harathi Hinterlands,Normal,9:30,12:30,15:30,18:30,21:30,0:30,3:30,6:30",
// 			"Shadow Behemonth,,1 ~ 15,Queensdale,Normal,9:45,11:45,13:45,15:45,17:45,19:45,21:45,23:45,1:45,3:45,5:45,7:45",
// 			"Golem Mark II,,60 ~ 70,Mount Maelstrom,Normal,10:00,13:00,16:00,19:00,22:00,1:00,4:00,7:00",
// 			"Karka Queen,卡卡女王,80,Southsun Cove,Hardcore,10:00,14:00,18:30,23:00,2:00,7:00",
// 			"Claw of Jormag,冰龍,70 ~ 80,Frostgorge Sound,Normal,10:30,13:30,16:30,19:30,22:30,1:30,4:30,7:30"
// 	};
///

class WorldBossStaticData {

  static final List<WorldBossInfo> worldBossDataList = [
    WorldBossInfo('Taidha Covington', 'Bloodtide Coast', '45 ~ 55', 0, false),
    WorldBossInfo('Tequatl', 'Sparkfly Fen', '55 ~ 65', 1, true),
    WorldBossInfo('Svanir Shaman', 'Wayfarer Foothills', '1 ~ 15', 2, false),
    WorldBossInfo('Megadestroyer', 'Bloodtide Coast', '60 ~ 70', 3, false),
    WorldBossInfo('Fire Elemental', 'Mount Maelstrom', '1 ~ 15', 4, false),
    WorldBossInfo('Shatterer', 'Blazeridge Steppes', '45 ~ 55', 5, false),
    WorldBossInfo('Evolved Jungle Wurm', 'Bloodtide Coast', '45 ~ 55', 6, true),
    WorldBossInfo('Jungle Wurm', 'Caledon Forest', '1 ~ 15', 7, false),
    WorldBossInfo('Modniir Ulgoth', 'Harathi Hinterlands', '45 ~ 55', 8, false),
    WorldBossInfo('Shadow Behemonth', 'Queensdale', '1 ~ 15', 9, false),
    WorldBossInfo('Golem Mark II', 'Mount Maelstrom', '60 ~ 70', 10, false),
    WorldBossInfo('Karka Queen', 'Southsun Cove', '80', 11, true),
    WorldBossInfo('Claw of Jormag', 'Frostgorge Sound', '70 ~ 80', 12, false)
  ];

  static final List<List<int>> worldBossListTime = [
    [1,5], // 0:00
    [2], // 0:15
    [8], // 0:30
    [4], // 0:45
    [6,10], // 1:00
    [7], // 1:15
    [12], // 1:30
    [9], // 1:45
    [0,11], // 2:00
    [2], // 2:15
    [3], // 2:30
    [4], // 2:45
    [1,5], // 3:00
    [7], // 3:15
    [8], // 3:30
    [9], // 3:45
    [6,10], // 4:00
    [2], // 4:15
    [12], // 4:30
    [4], // 4:45
    [0], // 5:00
    [7], // 5:15
    [3], // 5:30
    [9], // 5:45
    [5], // 6:00
    [2], // 6:15
    [8], // 6:30
    [4], // 6:45
    [10,11], // 7:00
    [7], // 7:15
    [12], // 7:30
    [9], // 7:45
    [0,1], // 8:00
    [2], // 8:15
    [3], // 8:30
    [4], // 8:45
    [5,6], // 9:00
    [7], // 9:15
    [8], // 9:30
    [9], // 9:45
    [10,11], // 10:00
    [2], // 10:15
    [12], // 10:30
    [4], // 10:45
    [0,1], // 11:00
    [7], // 11:15
    [3], // 11:30
    [9], // 11:45
    [5,6], // 12:00
    [2], // 12:15
    [8], // 12:30
    [4], // 12:45
    [10], // 13:00
    [7], // 13:15
    [12], // 13:30
    [9], // 13:45
    [0,11], // 14:00
    [2], // 14:15
    [3], // 14:30
    [4], // 14:45
    [1,5], // 15:00
    [7], // 15:15
    [8], // 15:30
    [9], // 15:45
    [6,10], // 16:00
    [2], // 16:15
    [12], // 16:30
    [4], // 16:45
    [0], // 17:00
    [7], // 17:15
    [3], // 17:30
    [9], // 17:45
    [5], // 18:00
    [2], // 18:15
    [8,11], // 18:30
    [4], // 18:45
    [10], // 19:00
    [7], // 19:15
    [1,12], // 19:30
    [9], // 19:45
    [0], // 20:00
    [2], // 20:15
    [3,6], // 20:30
    [4], // 20:45
    [5], // 21:00
    [7], // 21:15
    [8], // 21:30
    [9], // 21:45
    [10], // 22:00
    [2], // 22:15
    [12], // 22:30
    [4], // 22:45
    [0,11], // 23:00
    [7], // 23:15
    [3], // 23:30
    [9], // 23:45

  ];

  static int getIndexByNow(){
    final dateTime = new DateTime.now();
    final hour = dateTime.hour;
    final minute = dateTime.minute;

    //final index = hour * 4 + minute%15;

    return (hour * 4) + (minute%15);
  }



} // end class WorldBossStaticData