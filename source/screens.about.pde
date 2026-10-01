void about() {
  fade(1);
  if (targetLevel == "buffer") {
    targetLevel = "about";
  }
  fill(playerColour, alpha);
  tint(playerColour, alpha);
  textFont(benchNineLight, subtitleSize);
  if (!about1Shown) {
    text("This project was initiated by", centreX, centreY);
    if (fadeComplete) {
      about1Shown = true;
    }
  } else if (!about2Shown) {
    text("a computer science assessment", centreX, centreY);
    if (fadeComplete) {
      about2Shown = true;
    }
  } else if (!about3Shown) {
    text("and developed through", centreX, centreY);
    if (fadeComplete) {
      about3Shown = true;
    }
  } else if (!about4Shown) {
    image(hackclub, centreX, centreY);
    text("Hack Club", centreX, centreY);
    if (fadeComplete) {
      about4Shown = true;
    }
  } else if (!about5Shown) {
    text("in the events called", centreX, centreY);
    if (fadeComplete) {
      about5Shown = true;
    }
  } else if (!about6Shown) {
    image(summer, centreX, titleHeight);
    text("Summer of Making", centreX, centreY);
    if (fadeComplete) {
      about6Shown = true;
    }
  } else if (!about7Shown) {
    text("and", centreX, centreY);
    if (fadeComplete) {
      about7Shown = true;
    }
  } else {
    image(stardance, centreX, centreY);
    text("Stardance", centreX, centreY);
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
