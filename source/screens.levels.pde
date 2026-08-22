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
    if (!levelClears.get(int(level.substring(5)) - 1) && !levelDeaths.get(int(level.substring(5)) - 1)) {
      prevX = playerX;
      prevY = playerY;
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
      if (playerY < halfBlockSize) {
        playerY = halfBlockSize;
        ySpeed = 0;
      }
      if (playerX > right) {
        playerX = right;
      }
      if (playerX < halfBlockSize) {
        playerX = halfBlockSize;
      }
    }
    if (levelNPlatforms != null) {
      for (Platform plat : levelNPlatforms) {
        if (collisionCheck(plat)) {
          boolean wasLeft  = (prevX + halfBlockSize <= plat.spriteX - plat.spriteW / 2);
          boolean wasRight = (prevX - halfBlockSize >= plat.spriteX + plat.spriteW / 2);
          if (wasLeft) {
            playerX = plat.spriteX - plat.spriteW / 2 - halfBlockSize;
          } else if (wasRight) {
            playerX = plat.spriteX + plat.spriteW / 2 + halfBlockSize;
          } else {
            if (prevY < plat.spriteY) {
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
