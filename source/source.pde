import processing.sound.*;
import java.io.*;
void draw() {
  setColours(true);
  backdrop();
  switch(level) {
    case "level1":
      levels(level1ClearArea, level1Sprites, null, null);
      break;
    case "level2":
      levels(level2ClearArea, level2Sprites, null, null);
      break;
    case "level3":
      levels(level3ClearArea, level3Sprites, level3Platforms, null);
      break;
    case "level4":
      levels(level4ClearArea, level4Sprites, level4Platforms, null);
      break;
    case "level5":
      levels(level5ClearArea, level5Sprites, level5Platforms, null);
      break;
    case "level6":
      levels(level6ClearArea, level6Sprites, level6Platforms, null);
      break;
    case "level7":
      levels(level7ClearArea, level7Sprites, level7Platforms, null);
      break;
    case "level8":
      levels(level8ClearArea, level8Sprites, level8Platforms, null);
      break;
    case "level9":
      levels(level9ClearArea, level9Sprites, level9Platforms, null);
      break;
    case "level10":
      levels(level10ClearArea, level10Sprites, level10Platforms, null);
      break;
    case "level11":
      levels(level11ClearArea, level11Sprites, level11Platforms, null);
      break;
    case "level12":
      levels(level12ClearArea, level12Sprites, level12Platforms, null);
      break;
    case "level13":
      levels(level13ClearArea, level13Sprites, level13Platforms, null);
      break;
    case "level14":
      levels(level14ClearArea, level14Sprites, level14Platforms, null);
      break;
    case "level15":
      levels(level15ClearArea, level15Sprites, level15Platforms, null);
      break;
    case "level16":
      levels(level16ClearArea, level16Sprites, level16Platforms, null);
      break;
    case "level17":
      levels(level17ClearArea, level17Sprites, level17Platforms, null);
      break;
    case "level18":
      levels(level18ClearArea, level18Sprites, level18Platforms, null);
      break;
    case "level19":
      levels(level19ClearArea, level19Sprites, level19Platforms, null);
      break;
    case "level20":
      levels(level20ClearArea, level20Sprites, level20Platforms, null);
      break;
    case "level21":
      levels(level21ClearArea, level21Sprites, level21Platforms, null);
      break;
    case "level22":
      levels(level22ClearArea, level22Sprites, level22Platforms, null);
      break;
    case "level23":
      levels(level23ClearArea, level23Sprites, level23Platforms, null);
      break;
    case "level24":
      levels(level24ClearArea, level24Sprites, level24Platforms, null);
      break;
    case "level25":
      levels(level25ClearArea, level25Sprites, level25Platforms, null);
      break;
    case "level26":
      levels(level26ClearArea, level26Sprites, null, level26DeathPlatforms);
      break;
    case "level27":
      levels(level27ClearArea, level27Sprites, null, level27DeathPlatforms);
      break;
    case "level28":
      levels(level28ClearArea, level28Sprites, null, level28DeathPlatforms);
      break;
    case "level29":
      levels(level29ClearArea, level29Sprites, null, level29DeathPlatforms);
      break;
    case "level30":
      levels(level30ClearArea, level30Sprites, level30Platforms, level30DeathPlatforms);
      break;
    case "level31":
      levels(level31ClearArea, level31Sprites, level31Platforms, level31DeathPlatforms);
      break;
    case "level32":
      levels(level32ClearArea, level32Sprites, level32Platforms, level32DeathPlatforms);
      break;
    case "level33":
      levels(level33ClearArea, level33Sprites, level33Platforms, level33DeathPlatforms);
      break;
    case "level34":
      levels(level34ClearArea, level34Sprites, level34Platforms, level34DeathPlatforms);
      break;
    case "level35":
      levels(level35ClearArea, level35Sprites, level35Platforms, level35DeathPlatforms);
      break;
    case "level36":
      levels(level36ClearArea, level36Sprites, level36Platforms, level36DeathPlatforms);
      break;
    case "level37":
      levels(level37ClearArea, level37Sprites, level37Platforms, level37DeathPlatforms);
      break;
    case "level38":
      levels(level38ClearArea, level38Sprites, level38Platforms, level38DeathPlatforms);
      break;
    case "level39":
      levels(level39ClearArea, level39Sprites, level39Platforms, level39DeathPlatforms);
      break;
    case "level40":
      levels(level40ClearArea, level40Sprites, level40Platforms, level40DeathPlatforms);
      break;
    case "level41":
      levels(level41ClearArea, level41Sprites, level41Platforms, level41DeathPlatforms);
      break;
    case "level42":
      levels(level42ClearArea, level42Sprites, level42Platforms, level42DeathPlatforms);
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
