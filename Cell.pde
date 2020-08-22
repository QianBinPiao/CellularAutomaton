// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Cell {
  
  // now we only have 0, 1
  int cellType;

  float x, y;
  float w;

  int state;
  int previous;
  int lifeSpan;

  Cell(float x_, float y_, float w_, int type_) {
    x = x_;
    y = y_;
    w = w_;
    cellType = type_;
    
    //state = int(random(2));
    state = 0;
    previous = state;
    lifeSpan = 3;
  }
  
  void savePrevious() {
    previous = state; 
  }

  void newState(int s) {
    state = s;
  }
  
  void decreaseLifeSpan(){
    
    
    if (lifeSpan >0) {
      lifeSpan--;
    } else {
      lifeSpan = 0;
    }
  }

  void display() {
    if (lifeSpan == 3 && state == 1) {
      fill(0,0,255);
      //circle(x + w/2, y + w/2 , w);
      //fill(0, 0, 0);
      rect(x, y, w, w);
    } // blue
    else if (lifeSpan == 2 && state == 1) {
      fill(255, 0 , 0);
      //fill(0, 0, 0);
      rect(x, y, w, w);
      //triangle(x, y, x + w, y, x + w/2, y + w);
      //circle(x + w/2, y + w/2 , w);
    }
    else if (lifeSpan == 1 && state == 1) {
      fill(0,255,0);
      //fill(0, 0, 0);
      rect(x, y, w, w);
      //triangle(x + w/2, y, x + w, y + w, x, y+ w);
      //circle(x + w/2, y + w/2 , w);
    } // red
    else {
      fill(255, 255, 255);
      rect(x, y, w, w);
  }
    stroke(0);
    //rect(x, y, w, w);
    
    
  }
}
