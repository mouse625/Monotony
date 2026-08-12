String getParentPath(int gen) {
  int remainingGen = gen;
  File sketchDir = new File(sketchPath(""));
  while (remainingGen > 0) {
    sketchDir = sketchDir.getParentFile();
    remainingGen--;
  }
  return sketchDir.getAbsolutePath() + File.separator;
}
color getColour(String type) {
  if (type == "player") {
    return playerColour;
  } else if (type == "levelClearArea") {
    return levelClearAreaColour;
  } else if (type == "platform") {
    return platformColour;
  } else if (type == "deathPlatform") {
    return deathPlatformColour;
  } else {
    return color(0);
  }
}
void setColours(boolean initialised) {
  if (previousTheme != theme) {
    if (theme == "cyberpunk") {
      backgroundColour = color(20, 5, 30);
      playerColour = color(0, 255, 255);
      levelClearAreaColour = color(255, 0, 255);
      platformColour = color(80, 0, 100);
      deathPlatformColour = color(255, 50, 0);
      mountain1Colour = color(30, 0, 40);
      mountain2Colour = color(60, 0, 80);
      mountain3Colour = color(90, 0, 120);
      mountain4Colour = color(120, 0, 160);
      skyColour = color(100, 0, 130);
    } else if (theme == "light") {
      backgroundColour = color(240, 240, 245);
      playerColour = color(40, 40, 50);
      levelClearAreaColour = color(100, 180, 220);
      platformColour = color(200, 200, 210);
      deathPlatformColour = color(220, 120, 130);
      mountain1Colour = color(220, 220, 230);
      mountain2Colour = color(210, 210, 220);
      mountain3Colour = color(200, 200, 210);
      mountain4Colour = color(190, 190, 200);
      skyColour = color(240, 240, 245);
    } else if (theme == "dark") {
      backgroundColour = color(15);
      playerColour = color(255);
      levelClearAreaColour = color(0, 200, 255);
      platformColour = color(40);
      deathPlatformColour = color(255, 40, 40);
      mountain1Colour = color(10);
      mountain2Colour = color(20);
      mountain3Colour = color(30);
      mountain4Colour = color(40);
      skyColour = color(15);
    } else if (theme == "greyscale") {
      backgroundColour = color(95);
      playerColour = color(225);
      levelClearAreaColour = color(490 / 3);
      platformColour = color(190 / 3);
      deathPlatformColour = color(310 / 3);
      mountain1Colour = color(35);
      mountain2Colour = color(55);
      mountain3Colour = color(75);
      mountain4Colour = color(95);
      skyColour = color(40);
      } else if (theme == "default") {
      backgroundColour = color(85, 95, 105);
      playerColour = color(215, 225, 235);
      levelClearAreaColour = color(120, 170, 200);
      platformColour = color(50, 60, 80);
      deathPlatformColour = color(150, 70, 90);
      mountain1Colour = color(25, 35, 45);
      mountain2Colour = color(45, 55, 65);
      mountain3Colour = color(65, 75, 85);
      mountain4Colour = color(85, 95, 105);
      skyColour = color(30, 40, 50);
    } else if (theme == "sunset") {
      backgroundColour = color(240, 180, 120);
      playerColour = color(255, 240, 180);
      levelClearAreaColour = color(255, 100, 80);
      platformColour = color(180, 90, 60);
      deathPlatformColour = color(200, 60, 40);
      mountain1Colour = color(160, 70, 50);
      mountain2Colour = color(180, 80, 60);
      mountain3Colour = color(200, 90, 70);
      mountain4Colour = color(220, 100, 80);
      skyColour = color(240, 130, 90);
    } else if (theme == "forest") {
      backgroundColour = color(100, 130, 90);
      playerColour = color(230, 240, 210);
      levelClearAreaColour = color(80, 160, 120);
      platformColour = color(60, 80, 50);
      deathPlatformColour = color(160, 70, 60);
      mountain1Colour = color(40, 60, 30);
      mountain2Colour = color(50, 70, 40);
      mountain3Colour = color(60, 80, 50);
      mountain4Colour = color(70, 90, 60);
      skyColour = color(80, 110, 90);
    } else if (theme == "ice") {
      backgroundColour = color(200, 220, 240);
      playerColour = color(30, 50, 80);
      levelClearAreaColour = color(170, 220, 255);
      platformColour = color(180, 200, 220);
      deathPlatformColour = color(100, 150, 200);
      mountain1Colour = color(180, 200, 220);
      mountain2Colour = color(190, 210, 230);
      mountain3Colour = color(200, 220, 240);
      mountain4Colour = color(210, 230, 250);
      skyColour = color(210, 230, 250);
    }
    if (initialised) {
      mountain1.rangeColor = mountain1Colour;
      mountain2.rangeColor = mountain2Colour;
      mountain3.rangeColor = mountain3Colour;
      mountain4.rangeColor = mountain4Colour;
      for (int row = 0; row < 5; row++) {
        for (int col = 0; col < 8; col++) {
          sections[row][col] = loadImage(getParentPath(1) + "data/images/sections/" + theme + File.separator + theme + "Section[" + row + "][" + col + "].png");
        }
      }
    }
    previousTheme = theme;
  }
}
int getLevel(String levelString) {
  if (levelString.startsWith("level")) {
    return int(levelString.substring(5)) + 11;
  } else {
    switch(levelString) {
      case "intro":
        return 1;
      case "menu":
        return 2;
      case "levelSelect":
        return 3;
      case "achievements":
        return 4;
      case "tutorial":
        return 5;
      case "settings":
        return 6;
      case "themeSettings":
        return 7;
      case "graphicsSettings":
        return 8;
      case "audioSettings":
        return 9;
      case "about":
        return 10;
      case "outro":
        return 11;
      default:
        return 0;
    }
  }
}
void updateNextSection() {
  for (int row = 0; row < 5; row++) {
    for (int col = 0; col < 8; col++) {
      if (!sectionsUsed[row][col]) {
        sectionsUsed[row][col] = true;
        nextSection.set(row, col);
        return;
      }
    }
  }
  nextSection.set(-1, -1);
}
