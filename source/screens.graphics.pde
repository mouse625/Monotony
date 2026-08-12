void graphicsSettings() {
  fade(3);
  fill(playerColour, alpha);
  textFont(benchNineLight, blockSize * 2.25);
  textAlign(LEFT, CENTER);
  text("Trail", centreX + blockSize * 1.5, blockSize * 25.425);
  text("Jump Animation", centreX + blockSize * 1.5, blockSize * 28.575);
  textAlign(CENTER);
  for (Sprite sprite : graphicsSprites) {
    sprite.display();
  }
}
