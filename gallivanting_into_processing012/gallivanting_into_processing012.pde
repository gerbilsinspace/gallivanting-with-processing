// Daniel Shiffman
// The Nature of Code
// http://natureofcode.com

float increment = 0.01;
float zoff = 2000.0;
void setup() {
  size(800,200);
  
}

void draw() {
  background(0);
  
  // Optional: adjust noise detail here
  //noiseDetail(8,0.65f);
  
  loadPixels();

  float xoff = 0.0; // Start xoff at 0
  
  zoff += increment;
  
  // For every x,y coordinate in a 2D space, calculate a noise value and produce a brightness value
  for (int x = 0; x < width; x++) {
    xoff += increment;   // Increment xoff 
    float yoff = 0.0;   // For every xoff, start yoff at 0
    for (int y = 0; y < height; y++) {
      yoff += increment; 

      float bright = noise(xoff,yoff,zoff)*255;

      pixels[x+y*width] = color(bright);
      
    }
  }
  
  updatePixels();
}
