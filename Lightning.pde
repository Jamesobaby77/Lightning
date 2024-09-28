int startX, startY; // Starting coordinates

void setup() {
  size(400, 400);
  background(0); // Set background to black
}

void draw() {
  // Nothing to draw continuously
}

void mousePressed() {
  drawLightning();
}

void drawLightning() {
  startX = (int) random(1, 10);  // Random integer from 1 to 9 for x
  startY = (int) random(-9, 10);  // Random integer from -9 to 9 for y
  
  int segments = 10; // Number of lightning segments
  stroke(255); // Set line color to white
  strokeWeight(2); // Set line thickness
  
  // Initial position for lightning
  int prevX = startX * 40; // Scale x-coordinate
  int prevY = height / 2 + startY * 20; // Scale y-coordinate

  for (int i = 0; i < segments; i++) {
    int endX = startX + (int) random(1, 10);  // Add random positive integer from 1 to 9
    int endY = startY + (int) random(-9, 10); // Add random positive or negative integer from -9 to 9

    int currX = endX * 40; // Scale x-coordinate
    int currY = height / 2 + endY * 20; // Scale y-coordinate

    line(prevX, prevY, currX, currY); // Draw line
    prevX = currX; // Update previous x position
    prevY = currY; // Update previous y position

    // Update start position for the next segment
    startX = endX;
    startY = endY;
  }
}
