import processing.sound.*;
import java.io.*;
void draw() {
  setColours(true);
  backdrop();
  switch(level) {
    case "level1":
      level(level1ClearArea, level1Sprites, null, null);
      break;
    case "level2":
      level(level2ClearArea, level2Sprites, null, null);
      break;
    case "level3":
      level(level3ClearArea, level3Sprites, level3Platforms, null);
      break;
    case "level4":
      level(level4ClearArea, level4Sprites, level4Platforms, null);
      break;
    case "level5":
      level(level5ClearArea, level5Sprites, level5Platforms, null);
      break;
    case "level6":
      level(level6ClearArea, level6Sprites, level6Platforms, null);
      break;
    case "level7":
      level(level7ClearArea, level7Sprites, level7Platforms, null);
      break;
    case "level8":
      level(level8ClearArea, level8Sprites, level8Platforms, null);
      break;
    case "level9":
      level(level9ClearArea, level9Sprites, level9Platforms, null);
      break;
    case "level10":
      level(level10ClearArea, level10Sprites, level10Platforms, null);
      break;
    case "level11":
      level(level11ClearArea, level11Sprites, level11Platforms, null);
      break;
    case "level12":
      level(level12ClearArea, level12Sprites, level12Platforms, null);
      break;
    case "level13":
      level(level13ClearArea, level13Sprites, level13Platforms, null);
      break;
    case "level14":
      level(level14ClearArea, level14Sprites, level14Platforms, null);
      break;
    case "level15":
      level(level15ClearArea, level15Sprites, level15Platforms, null);
      break;
    case "level16":
      level(level16ClearArea, level16Sprites, level16Platforms, null);
      break;
    case "level17":
      level(level17ClearArea, level17Sprites, level17Platforms, null);
      break;
    case "level18":
      level(level18ClearArea, level18Sprites, level18Platforms, null);
      break;
    case "level19":
      level(level19ClearArea, level19Sprites, level19Platforms, null);
      break;
    case "level20":
      level(level20ClearArea, level20Sprites, level20Platforms, null);
      break;
    case "level21":
      level(level21ClearArea, level21Sprites, level21Platforms, null);
      break;
    case "level22":
      level(level22ClearArea, level22Sprites, level22Platforms, null);
      break;
    case "level23":
      level(level23ClearArea, level23Sprites, level23Platforms, null);
      break;
    case "level24":
      level(level24ClearArea, level24Sprites, level24Platforms, null);
      break;
    case "level25":
      level(level25ClearArea, level25Sprites, level25Platforms, null);
      break;
    case "level26":
      level(level26ClearArea, level26Sprites, null, level26DeathPlatforms);
      break;
    case "level27":
      level(level27ClearArea, level27Sprites, null, level27DeathPlatforms);
      break;
    case "level28":
      level(level28ClearArea, level28Sprites, null, level28DeathPlatforms);
      break;
    case "level29":
      level(level29ClearArea, level29Sprites, null, level29DeathPlatforms);
      break;
    case "level30":
      level(level30ClearArea, level30Sprites, level30Platforms, level30DeathPlatforms);
      break;
    case "level31":
      level(level31ClearArea, level31Sprites, level31Platforms, level31DeathPlatforms);
      break;
    case "level32":
      level(level32ClearArea, level32Sprites, level32Platforms, level32DeathPlatforms);
      break;
    case "level33":
      level(level33ClearArea, level33Sprites, level33Platforms, level33DeathPlatforms);
      break;
    case "level34":
      level(level34ClearArea, level34Sprites, level34Platforms, level34DeathPlatforms);
      break;
    case "level35":
      level(level35ClearArea, level35Sprites, level35Platforms, level35DeathPlatforms);
      break;
    case "level36":
      level(level36ClearArea, level36Sprites, level36Platforms, level36DeathPlatforms);
      break;
    case "level37":
      level(level37ClearArea, level37Sprites, level37Platforms, level37DeathPlatforms);
      break;
    case "level38":
      level(level38ClearArea, level38Sprites, level38Platforms, level38DeathPlatforms);
      break;
    case "level39":
      level(level39ClearArea, level39Sprites, level39Platforms, level39DeathPlatforms);
      break;
    case "level40":
      level(level40ClearArea, level40Sprites, level40Platforms, level40DeathPlatforms);
      break;
    case "level41":
      level(level41ClearArea, level41Sprites, level41Platforms, level41DeathPlatforms);
      break;
    case "level42":
      level(level42ClearArea, level42Sprites, level42Platforms, level42DeathPlatforms);
      break;
    case "intro":
      intro();
      break;
    case "menu":
      menu();
      break;
    case "levelSelect":
      levelSelect();
      break;
    case "achievements":
      achievements();
      break;
    case "tutorial":
      tutorial();
      break;
    case "settings":
      settingsMenu();
      break;
    case "themeSettings":
      themeSettings();
      break;
    case "graphicsSettings":
      graphicsSettings();
      break;
    case "audioSettings":
      audioSettings();
      break;
    case "about":
      about();
      break;
    case "outro":
      end();
      break;
    default:
      break;
  }
  cursor.display();
}
