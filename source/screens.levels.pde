void level(LevelClearArea levelNClearArea, ArrayList<Sprite> levelNSprites, ArrayList<Platform> levelNPlatforms, ArrayList<DeathPlatform> levelNDeathPlatforms) {
  levelTitle();
  if(levelNameShown) {
    fade(5);
    if (collisionCheck(levelNClearArea) && !levelClears.get(int(level.substring(5)) - 1)) {
      if (int(level.substring(5)) < levelClears.size()) {
        targetLevel = "level" + (int(level.substring(5)) + 1);
      } else {
        targetLevel = "outro";
        levelsButton.btnL = false;
      }
      levelClears.set(int(level.substring(5)) - 1, true);
      if (levelClearCheckbox.getState() == "checked") {
        levelClear.play();
      }
    }
    if (level.startsWith("level")) {
      if (levelDeaths.get(int(level.substring(5)) - 1) && alpha <= 0) {
        levelDeaths.set(int(level.substring(5)) - 1, false);
        for (int levelClear = 0; levelClear < levelClears.size(); levelClear++) {
          levelClears.set(levelClear, false);
        }
      }
    }
    if (level.startsWith("level")) {
      if (!levelClears.get(int(level.substring(5)) - 1) && !levelDeaths.get(int(level.substring(5)) - 1)) {
        if (movingLeft) {
          playerX -= xSpeed;
        }
        if (movingRight) {
          playerX += xSpeed;
        }
        ySpeed += gravity;
        playerY += ySpeed;
        if (playerY >= bottom) {
          playerY = bottom;
          ySpeed = 0;
          onGround = true;
        } else {
          onGround = false;
        }
        if (playerX > right) {
          playerX = right;
        }
        if (playerX < halfBlockSize) {
          playerX = halfBlockSize;
        }
      }
    }
    if (levelNPlatforms != null) {
      for (Platform plat : levelNPlatforms) {
        if (collisionCheck(plat)) {
          float overlapX = (halfBlockSize + plat.spriteW / 2) - abs(playerX - plat.spriteX);
          float overlapY = (halfBlockSize + plat.spriteH / 2) - abs(playerY - plat.spriteY);
          if (overlapX < overlapY) {
            if (playerX < plat.spriteX) {
              playerX = plat.spriteX - plat.spriteW / 2 - halfBlockSize;
            } else {
              playerX = plat.spriteX + plat.spriteW / 2 + halfBlockSize;
            }
            xSpeed = 0;
          } else {
            if (playerY < plat.spriteY) {
              playerY = plat.spriteY - plat.spriteH / 2 - halfBlockSize;
              onGround = true;
            } else {
              playerY = plat.spriteY + plat.spriteH / 2 + halfBlockSize;
            }
            ySpeed = 0;
          }
        }
      }
    }
    if (levelNDeathPlatforms != null) {
      for (DeathPlatform deathPlat : levelNDeathPlatforms) {
        if (collisionCheck(deathPlat) && !levelDeaths.get(int(level.substring(5)) - 1)) {
          levelDeaths.set(int(level.substring(5)) - 1, true);
          if (playerDeathCheckbox.getState() == "checked") {
            playerDeath.play();
          }
          targetLevel = "level1";
        }
      }
    }
    for (Sprite sprite : levelNSprites) {
      sprite.display();
    }
  }
}
