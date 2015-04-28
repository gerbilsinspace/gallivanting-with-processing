import java.util.*;
Random generator;

void setup() {
  size(640, 360);
  background(20);
  generator = new Random();
}

void draw() {
  float num = (float) generator.nextGaussian();
  float sd = 100;
  float mean = 320;
  
  float x = sd * num + mean;
  
  noStroke();
  fill(255, 10);
  ellipse(x, 180, 16, 16);
}
