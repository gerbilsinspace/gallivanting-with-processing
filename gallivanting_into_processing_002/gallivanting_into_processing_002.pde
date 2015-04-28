class Walker {
  int x;
  int y;
  
  Walker() {
    x = width / 2;
    y = height / 2;
  }

  void display() {
    stroke(0);
    point(x, y);
  }

  void step() {
    float choice = random(100);
    if (choice <= 12.5) {
      x++;
    } else if (choice <= 25) {
      x--;
    } else if (choice <= 37.5) {
      y--;
    } else if (choice <= 50) {
      y++;
    } else if (choice <= 75) {
      if (x > mouseX) {
        x--;
      } else if (x < mouseX){
        x++;
      } else if (y > mouseY) {
        y--;
      } else {
        y++;
      }
    } else {
      if (y > mouseY) {
        y--;
      } else if (y < mouseY){
        y++;
      } else if (x > mouseX) {
        x--;
      } else {
        x++;
      }
    }
  }
}

Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}
