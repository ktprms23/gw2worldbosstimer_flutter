
import 'package:flutter/material.dart';
class WorldBossInfo {

  final String bossName;
  final String bossMap;
  final String bossLevel;
  final int bossIconID;

  WorldBossInfo(this.bossName, this.bossMap, this.bossLevel, this.bossIconID );

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
    WorldBossInfo('Taidha Covington', 'Bloodtide Coast', '45 ~ 55', 0),
    WorldBossInfo('Tequatl', 'Sparkfly Fen', '55 ~ 65', 1),
    WorldBossInfo('Svanir Shaman', 'Wayfarer Foothills', '1 ~ 15', 2),
    WorldBossInfo('Megadestroyer', 'Bloodtide Coast', '60 ~ 70', 3),
    WorldBossInfo('Fire Elemental', 'Mount Maelstrom', '1 ~ 15', 4),
    WorldBossInfo('Shatterer', 'Blazeridge Steppes', '45 ~ 55', 5),
    WorldBossInfo('Evolved Jungle Wurm', 'Bloodtide Coast', '45 ~ 55', 6),
    WorldBossInfo('Jungle Wurm', 'Caledon Forest', '1 ~ 15', 7),
    WorldBossInfo('Modniir Ulgoth', 'Harathi Hinterlands', '45 ~ 55', 8),
    WorldBossInfo('Shadow Behemonth', 'Queensdale', '1 ~ 15', 9),
    WorldBossInfo('Golem Mark II', 'Mount Maelstrom', '60 ~ 70', 10),
    WorldBossInfo('Karka Queen', 'Southsun Cove', '80', 11),
    WorldBossInfo('Claw of Jormag', 'Frostgorge Sound', '70 ~ 80', 12)
  ];

  static final List<List<int>> worldBossListTime = [
    [1,5], // 0:00
    [1,5], // 0:15
    [1,5], // 0:30
    [1,5], // 0:45
    [1,5], // 1:00
    [1,5], // 1:15
    [1,5], // 1:30
    [1,5], // 1:45
    [1,5], // 2:00
    [1,5], // 2:15
    [1,5], // 2:30
    [1,5], // 2:45
    [1,5], // 3:00
    [1,5], // 3:15
    [1,5], // 3:30
    [1,5], // 3:45
    [1,5], // 4:00
    [1,5], // 4:15
    [1,5], // 4:30
    [1,5], // 4:45
    [1,5], // 5:00
    [1,5], // 5:15
    [1,5], // 5:30
    [1,5], // 5:45
    [1,5], // 6:00
    [1,5], // 6:15
    [1,5], // 6:30
    [1,5], // 6:45
    [1,5], // 7:00
    [1,5], // 7:15
    [1,5], // 7:30
    [1,5], // 7:45
    [1,5], // 8:00
    [1,5], // 8:15
    [1,5], // 8:30
    [1,5], // 8:45
    [1,5], // 9:00
    [1,5], // 9:15
    [1,5], // 9:30
    [1,5], // 9:45
    [1,5], // 10:00
    [1,5], // 10:15
    [1,5], // 10:30
    [1,5], // 10:45
    [1,5], // 11:00
    [1,5], // 11:15
    [1,5], // 11:30
    [1,5], // 11:45
    [1,5], // 12:00
    [1,5], // 12:15
    [1,5], // 12:30
    [1,5], // 12:45
    [1,5], // 13:00
    [1,5], // 13:15
    [1,5], // 13:30
    [1,5], // 13:45
    [1,5], // 14:00
    [1,5], // 14:15
    [1,5], // 14:30
    [1,5], // 14:45
    [1,5], // 15:00
    [1,5], // 15:15
    [1,5], // 15:30
    [1,5], // 15:45
    [1,5], // 16:00
    [1,5], // 16:15
    [1,5], // 16:30
    [1,5], // 16:45
    [1,5], // 17:00
    [1,5], // 17:15
    [1,5], // 17:30
    [1,5], // 17:45
    [1,5], // 1:00
    [1,5], // 1:15
    [1,5], // 1:30
    [1,5], // 1:45
    [1,5], // 1:00
    [1,5], // 1:15
    [1,5], // 1:30
    [1,5], // 1:45
    [1,5], // 1:00
    [1,5], // 1:15
    [1,5], // 1:30
    [1,5], // 1:45
    [1,5], // 1:00
    [1,5], // 1:15
    [1,5], // 1:30
    [1,5], // 1:45
    [1,5], // 1:00
    [1,5], // 1:15
    [1,5], // 1:30
    [1,5], // 1:45
    [1,5], // 1:00
    [1,5], // 1:15
    [1,5], // 1:30
    [1,5], // 1:45

  ];

} // end class WorldBossStaticData