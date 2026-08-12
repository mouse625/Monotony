void end() {
  fade(1);
  fill(playerColour, alpha);
  textFont(benchNineLight, titleSize);
  text("Cyend", centreX, titleHeight);
  push();
  rectMode(CORNER);
  textAlign(CENTER, TOP);
  textFont(benchNineLight, subtitleSize);
  text("This might not be the end. You might still have some achievements to collect. If not, goodbye.", 0, subtitleHeight, wrapWidth, wrapHeight);
  pop();
  if (time == 255) {
    targetLevel = "menu";
  }
}
