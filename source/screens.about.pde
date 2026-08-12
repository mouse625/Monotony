void about() {
  fade(1);
  if (targetLevel == "buffer") {
    targetLevel = "about";
  }
  fill(playerColour, alpha);
  tint(playerColour, alpha);
  textFont(benchNineLight, subtitleSize);
  if (!about1Shown) {
    text("This project was initiated by", centreX, titleHeight);
    if (fadeComplete) {
      about1Shown = true;
    }
  } else if (!about2Shown) {
    text("a computer science assessment", centreX, titleHeight);
    if (fadeComplete) {
      about2Shown = true;
    }
  } else if (!about3Shown) {
    text("and developed through", centreX, titleHeight);
    if (fadeComplete) {
      about3Shown = true;
    }
  } else if (!about4Shown) {
    image(hackclub, centreX, titleHeight);
    text("Hack Club", centreX, titleHeight);
    if (fadeComplete) {
      about4Shown = true;
    }
  } else if (!about5Shown) {
    text("in the events called", centreX, titleHeight);
    if (fadeComplete) {
      about5Shown = true;
    }
  } else if (!about6Shown) {
    image(summer, centreX, titleHeight);
    text("Summer of Making", centreX, titleHeight);
    if (fadeComplete) {
      about6Shown = true;
    }
  } else if (!about7Shown) {
    text("and", centreX, titleHeight);
    if (fadeComplete) {
      about7Shown = true;
    }
  } else {
    image(stardance, centreX, titleHeight);
    text("Stardance", centreX, titleHeight);
    if (time == 255) {
      targetLevel = "settings";
    }
    if (fadeComplete) {
      about1Shown = false;
      about2Shown = false;
      about3Shown = false;
      about4Shown = false;
      about5Shown = false;
      about6Shown = false;
      about7Shown = false;
    }
  }
  if (time == 255 && targetLevel != "settings") {
    targetLevel = "buffer";
  }
}
