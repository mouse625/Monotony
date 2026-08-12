class Mountain {
  int transitionFrames = 60;
  float yBase;
  float parallaxFactorX;
  float parallaxFactorY;
  float peakVariation;
  float noiseSeed;
  float currentCameraX = 0;
  float currentCameraY = 0;
  float cameraLerpSpeed = 0.16;
  float transitionProgress = 1;
  color rangeColor;
  String currentLevel = level;
  ArrayList<PVector> originalPoints = new ArrayList<>();
  ArrayList<PVector> currentPoints = new ArrayList<>();
  ArrayList<PVector> targetPoints = new ArrayList<>();
  Mountain(float yBs, float parallaxX, float parallaxY, color colour, float variation, float seed) {
    this.yBase = yBs;
    this.parallaxFactorX = parallaxX;
    this.parallaxFactorY = parallaxY;
    this.rangeColor = colour;
    this.peakVariation = variation;
    this.noiseSeed = seed;
    this.generateMountainProfile();
    for (PVector p : targetPoints) {
      originalPoints.add(p.copy());
      currentPoints.add(p.copy());
    }
  }
  void generateMountainProfile() {
    noiseSeed((long)this.noiseSeed * getLevel(level));
    this.targetPoints.clear();
    for (int xPos = int(blockSize * -48); xPos < blockSize * 144; xPos += blockSize / 10) {
      float nxPos = xPos * 0.003 + this.noiseSeed;
      float wave = xPos * (TWO_PI / (blockSize * 3840));
      float waveEffect = map(wave, -1, 1, 0.3, 1.0);
      float elevation = noise(nxPos) * (this.peakVariation);
      float ridges = noise(nxPos * 2.5) * (this.peakVariation * 0.4);
      float detail = noise(nxPos * 10) * (this.peakVariation * 0.15);
      float yPos = (this.yBase - (elevation + ridges) * waveEffect + detail);
      PVector point = new PVector(xPos, constrain(yPos, blockSize * -25, blockSize * 80));
      this.targetPoints.add(point);
    }
  }
  void updateProfileIfNeeded() {
    if (this.currentLevel != level) {
      originalPoints.clear();
      for (PVector p : currentPoints) {
        originalPoints.add(p.copy());
      }
      generateMountainProfile();
      this.transitionProgress = 0;
      this.currentLevel = level;
    }
    if (this.transitionProgress < 1) {
      this.transitionProgress = min(1, transitionProgress + (1.0 / transitionFrames));
      for (int i = 0; i < this.currentPoints.size(); i++) {
        PVector original = this.originalPoints.get(i);
        PVector target = this.targetPoints.get(i);
        PVector current = this.currentPoints.get(i);
        current.set(map(this.transitionProgress, 0, 1, original.x, target.x), map(this.transitionProgress, 0, 1, original.y, target.y));
      }
    }
  }
  void display(float targetCameraX, float targetCameraY) {
    this.currentCameraX = lerp(currentCameraX, targetCameraX, cameraLerpSpeed);
    this.currentCameraY = lerp(currentCameraY, targetCameraY, cameraLerpSpeed);
    this.updateProfileIfNeeded();
    fill(this.rangeColor);
    beginShape();
    vertex(blockSize * -96, blockSize * 64);
    for (PVector p : this.currentPoints) {
      vertex(p.x + currentCameraX * this.parallaxFactorX, p.y + currentCameraY * this.parallaxFactorY);
    }
    vertex(blockSize * 192, blockSize * 64);
    endShape(CLOSE);
    stroke(lerpColor(this.rangeColor, color(255), 0.4));
    strokeWeight(blockSize * 1 / 6);
    noFill();
    beginShape();
    for (PVector point : currentPoints) {
      curveVertex(point.x + currentCameraX * this.parallaxFactorX * 0.7, point.y + currentCameraY * this.parallaxFactorY * 0.7 - blockSize * 4 / 3);
    }
    endShape();
    noStroke();
  }
}