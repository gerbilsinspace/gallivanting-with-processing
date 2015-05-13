import java.util.*;
Random generator;

void setup() {
  size(640, 360);
  background(20);
  generator = new Random();
}

void draw() {
  float num = (float) generator.nextGaussian();
  float num2 = (float) generator.nextGaussian();
  float num3 = (float) generator.nextGaussian();
  float sd = 40;
  float mean = width / 2;
  
  float x = sd * num + mouseX;
  float y = sd * num2 + mouseY;
  
  noStroke();
  fill(int(random(255)), int(random(255)), int(random(255)), 90);
  ellipse(x, y, 20, 20);
}
