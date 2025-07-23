void setup() {
  size(600, 600);
  background(#D18F1D);
  stroke(0, 20);
  int steps = 50;

  // Top to Right
  for (int i = 0; i <= steps; i++) {
    float t = i / float(steps);
    float x1 = lerp(0, width / 2, t);
    float y1 = 0;
    float x2 = width;
    float y2 = lerp(height / 2, 0, t);
    line(x1, y1, x2, y2);
  }

  // Right to Bottom
  for (int i = 0; i <= steps; i++) {
    float t = i / float(steps);
    float x1 = width;
    float y1 = lerp(height / 2, height, t);
    float x2 = lerp(width, width / 2, t);
    float y2 = height;
    line(x1, y1, x2, y2);
  }

  // Bottom to Left
  for (int i = 0; i <= steps; i++) {
    float t = i / float(steps);
    float x1 = lerp(width, width / 2, t);
    float y1 = height;
    float x2 = 0;
    float y2 = lerp(height / 2, height, t);
    line(x1, y1, x2, y2);
  }

  // Left to Top
  for (int i = 0; i <= steps; i++) {
    float t = i / float(steps);
    float x1 = 0;
    float y1 = lerp(height / 2, 0, t);
    float x2 = lerp(0, width / 2, t);
    float y2 = 0;
    line(x1, y1, x2, y2);
  }
}
