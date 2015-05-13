class Walker {
  float x,y;

  float tx,ty;

  Walker() {
    x = width / 2;
    y = height / 2;
    
    tx = 0;
    tx = 1000;
  }

  void step() {
    float mx = map(noise(tx), 0, 1, -1, 1);
    float my = map(noise(ty), 0, 1, -1, 1);
    
    x = x + mx;
    y = y + my;
    
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
    
    tx = tx +  0.01;
    ty = ty + 0.01;
  }
  
  void display() {
    stroke(230);
    ellipse(x, y, 6, 6);
  }
}

float t = 0;
Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(20);
}

void draw() {
  w.step();
  w.display();
}
