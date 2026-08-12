void intro() {
  fade(1);
  fill(playerColour, alpha);
  tint(playerColour, alpha);
  textFont(benchNineLight, titleSize);
  text("Monotony", centreX, titleHeight);
  push();
  rectMode(CORNER);
  textAlign(CENTER, TOP);
  textFont(benchNineLight, subtitleSize);
  text("A Minimalist Platformer", 0, subtitleHeight, wrapWidth, wrapHeight);
  pop();
  if (time == 255) {
    targetLevel = "mainMenu";
  }
}
