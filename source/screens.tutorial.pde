void tutorial() {
  fade(1);
  if (targetLevel == "buffer") {
    targetLevel = "tutorial";
  }
  fill(playerColour, alpha);
  textFont(benchNineLight, subtitleSize);
  push();
  rectMode(CORNER);
  textAlign(CENTER, TOP);
  if (!tutorial1Shown) {
    text("This is the player, your in-game representation. You can use WASD, arrow keys or the spacebar to move.", 0, subtitleHeight, wrapWidth, wrapHeight);
    if (fadeComplete) {
      tutorial1Shown = true;
    }
    rectMode(CENTER);
    for (Sprite sprite : tutorial1Sprites) {
      sprite.display();
    }
    rectMode(CORNER);
  } else if (!tutorial2Shown) {
    text("This is a platform, essentially a hovering block that keeps you from falling. It can be utilised to reach greater heights.", 0, subtitleHeight, wrapWidth, wrapHeight);
    if (fadeComplete) {
      tutorial2Shown = true;
    }
    rectMode(CENTER);
    for (Sprite sprite : tutorial2Sprites) {
      sprite.display();
    }
    rectMode(CORNER);
  } else if (!tutorial3Shown) {
    text("This is a death platform, a quote on quote platform that kills you on contact. Avoiding it is highly recommended.", 0, subtitleHeight, wrapWidth, wrapHeight);
    if (fadeComplete) {
      tutorial3Shown = true;
    }
    rectMode(CENTER);
    for (Sprite sprite : tutorial3Sprites) {
      sprite.display();
    }
    rectMode(CORNER);
  } else if (!tutorial4Shown) {
    text("This is the level clear area. The objective of each level is to contact it, upon which it transports you to the next level.", 0, subtitleHeight, wrapWidth, wrapHeight);
    if (fadeComplete) {
      tutorial4Shown = true;
    }
    rectMode(CENTER);
    for (Sprite sprite : tutorial4Sprites) {
      sprite.display();
    }
    rectMode(CORNER);
  } else {
    text("Good luck, but it's not gonna help you on your futile journey.", 0, subtitleHeight, wrapWidth, wrapHeight);
    if (time == 255) {
      targetLevel = "menu";
    }
    if (fadeComplete) {
      tutorial1Shown = false;
      tutorial2Shown = false;
      tutorial3Shown = false;
      tutorial4Shown = false;
    }
  }
  pop();
  if (time == 255 && targetLevel != "menu") {
    targetLevel = "buffer";
  }
}
