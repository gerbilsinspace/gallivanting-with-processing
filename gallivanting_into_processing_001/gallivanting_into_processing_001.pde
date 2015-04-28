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
    int choice = int(random(100));
    if (choice <= 30) {
      x++;
    } else if (choice <= 50) {
      x--;
    } else if (choice <= 70) {
      y--;
    } else {
      y++;
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
