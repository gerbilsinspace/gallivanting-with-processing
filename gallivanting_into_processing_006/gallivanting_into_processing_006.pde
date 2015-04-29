import java.util.*;
Random g;
Walker w;

void setup() {
  size(1000, 1000);
  background(20);
  w = new Walker();
  g = new Random();
}

void draw() {
  float num = createNum();
  
  float sd = 3;
  float mean = width / 2;
  w.step(sd * num);
  w.render();
}

float createNum() {
  while (true) {
    float r1 = random(10);
    float p = r1;
    float r2 = random(10);
    
    if (r2 < r1) {
      return r1;
    }
  }
}

class Walker {
  float x, y;
  int savedPosition;
  int savedChoice;
  
  Walker() {
    x = width / 2;
    y = height / 2;
  }
  
  void render() {
    int colour1 = (int) random(255);
    int colour2 = (int) random(255);
    int colour3 = (int) random(255);
    stroke(colour1, colour2, colour3);
    ellipse(x, y, 40, 40);
  }
  
  void step(float num) {
    while(savedPosition > 0) {
      savedPosition--;
      move(savedChoice);
      x = constrain(x,0,width-1);
      y = constrain(y,0,height-1);
      render();
    }
    
    savedChoice = int(random(4));
    savedPosition = Math.round(num);
    move(savedChoice);
    
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  };
  
  void move(int choice) {
    if (choice == 0) {
      x++;
    } else if (choice == 1) {
      x--;
    } else if (choice == 2) {
      y++;
    } else {
      y--;
    }
  }
}
