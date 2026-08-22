boolean collisionCheck(Sprite sprite) {
  float playerLeft = playerX - halfBlockSize;
  float playerRight = playerX + halfBlockSize;
  float playerTop = playerY - halfBlockSize;
  float playerBottom = playerY + halfBlockSize;
  float spriteLeft = sprite.spriteX - sprite.spriteW / 2;
  float spriteRight = sprite.spriteX + sprite.spriteW / 2;
  float spriteTop = sprite.spriteY - sprite.spriteH / 2;
  float spriteBottom = sprite.spriteY + sprite.spriteH / 2;
  return (playerRight > spriteLeft && playerLeft < spriteRight && playerBottom > spriteTop && playerTop < spriteBottom);
}
boolean hoverCheck(Button button) {
  float left = button.btnX - button.currentW / 2;
  float right = button.btnX + button.currentW / 2;
  float top = button.btnY - button.currentH / 2;
  float bottom = button.btnY + button.currentH / 2;
  if (mouseX >= left && mouseX <= right && mouseY >= top && mouseY <= bottom) {
    return true;
  } else {
    return false;
  }
}
boolean hoverCheck(Checkbox checkbox) {
  float left = checkbox.spriteX - checkbox.checkboxW / 2;
  float right = checkbox.spriteX + checkbox.checkboxW / 2;
  float top = checkbox.spriteY - checkbox.checkboxH / 2;
  float bottom = checkbox.spriteY + checkbox.checkboxH / 2;
  if (mouseX >= left && mouseX <= right && mouseY >= top && mouseY <= bottom) {
    return true;
  } else {
    return false;
  }
}
