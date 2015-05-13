import java.util.*;
Random g;
Walker w;

void setup() {
  size(640, 360);
  background(20);
  w = new Walker();
  g = new Random();
}

void draw() {
  float num = (float) g.nextGaussian();
  
  float sd = 3;
  float mean = width / 2;
  w.step(sd * num);
  w.render();
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
    stroke(230);
    point(x, y);
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
