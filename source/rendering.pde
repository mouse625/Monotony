void fade(float speed) {
  float prevTime = time;
  float currentSpeed;
  if (time < 255) {
    currentSpeed = map(time, 0, 255, speed * 3, speed);
  } else if (time > 255) {
    currentSpeed = map(time, 255, 510, speed, speed * 3);
  } else {
    currentSpeed = speed;
  }
  if (level.startsWith("level")) {
    if ((time + currentSpeed) > 255 && time < 255) {
      time = 255;
    }
    if (!(!(levelClears.get(int(level.substring(5)) - 1) || levelDeaths.get(int(level.substring(5)) - 1)) && time == 255 && levelNameShown)) {
      time = int(min(510, time + currentSpeed));
    }
  } else if (time != 255 || level != targetLevel) {
    if ((time + currentSpeed) > 255 && time < 255) {
      time = 255;
    } else {
      time = int(min(510, time + currentSpeed));
    }
  }
  if (time <= 255) {
    alpha = int(map(time, 0, 255, 0, 255));
  } else {
    alpha = int(map(time, 255, 510, 255, 0));
  }
  fadeComplete = (prevTime < 510 && time >= 510);
  if (time >= 510) {
    boolean switchingLevels = (level != targetLevel);
    time = 0;
    alpha = 0;
    playerX = halfBlockSize;
    playerY = bottom;
    if (level.startsWith("level")) {
      if (!switchingLevels && !levelNameShown) {
        levelNameShown = true;
      }
      if ((levelClears.get(int(level.substring(5)) - 1) || levelDeaths.get(int(level.substring(5)) - 1)) && levelNameShown) {
        levelNameShown = false;
      }
    }
    level = targetLevel;
  }
}
void backdrop() {
  background(skyColour);
  if (level.startsWith("level")) {
    targetCamX = -playerX + blockSize * 48;
    targetCamY = -playerY + blockSize * 90;
  } else {
    targetCamX = -halfBlockSize + blockSize * 48;
    targetCamY = -bottom + blockSize * 90;
  }
  for (Mountain mount : mountains) {
    mount.display(targetCamX, targetCamY);
  }
}
void levelTitle() {
  if (!levelNameShown) {
    fade(1);
    fill(255, alpha);
    textFont(benchNineLight, titleSize);
    text(levelTitles.get(int(level.substring(5)) - 1), centreX, titleHeight);
    push();
    rectMode(CORNER);
    textAlign(CENTER, TOP);
    textFont(benchNineLight, subtitleSize);
    text(levelDescriptions.get(int(level.substring(5)) - 1), 0, subtitleHeight, wrapWidth, wrapHeight);
    pop();
  }
}
