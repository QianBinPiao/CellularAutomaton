// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// A basic implementation of John Conway's Game of Life CA

// Each cell is now an object!

GOL gol;
int w = 16;
PFont font;
void setup() {
  size(800, 800);
  gol = new GOL();
  String[] list = PFont.list();
  for (int i = 0; i < list.length; i++) {
    println(list[i]);
  
  }
  background(255);
  font = createFont(list[0], 16, true);
  
}

void draw() {
  textFont(font, 16);
  
  gol.generate();
  gol.display(); //<>//
  //noFill();
  //arc(200, 60, 40, 80, 0, HALF_PI);
  //arc(90, 60, 40, 80, radians(45), radians(225));
  //fill(0);
  //text("HelloWorld", 10, 100);
  
  delay(500);
}

void keyPressed() {
  int x = mouseX/16;
  int y = mouseY/16;
  /*
  if (key == 's') {
    gol.board[x][y].state = 1;
  }
  */
  
  switch (key) {
    case 'q': {
      gol.board[x][y].state = 1;
      gol.board[x+1][y].state = 1;
      gol.board[x+1][y+1].state = 1;
      gol.board[x][y + 1].state = 1;
      break;
    
    }
    case 'w': {
      gol.board[x][y].state = 1;
      gol.board[x-1][y + 1].state = 1;
      gol.board[x+1][y + 1].state = 1;
      gol.board[x][y + 2].state = 1;
      break;
    }
    case 'e': {
      gol.board[x][y].state = 1;
      gol.board[x - 1][y + 1].state = 1;
      gol.board[x - 1][y + 2].state = 1;
      gol.board[x + 1][y + 1].state = 1;
      gol.board[x + 1][y + 2].state = 1;
      gol.board[x][y + 3].state = 1;
      break;
    }
    case 'r': {
      gol.board[x][y - 1].state = 1;
      gol.board[x + 1][y - 1].state = 1;
      gol.board[x + 1][y].state = 1;
      gol.board[x - 1][y].state = 1;
      gol.board[x - 1][y + 1].state = 1;
      gol.board[x][y + 1].state = 1;
      break;
    }
    case 't': {
      gol.board[x][y].state = 1;
      gol.board[x + 2][y].state = 1;
      gol.board[x + 3][y].state = 1;
      gol.board[x][y + 1].state = 1;
      gol.board[x + 1][y + 1].state = 1;
      gol.board[x + 3][y + 1].state = 1;
      break;
    }
    case 'y': {
      gol.board[x + 1][y].state = 1;
      gol.board[x + 2][y].state = 1;
      gol.board[x][y + 1].state = 1;
      gol.board[x + 3][y + 1].state = 1;
      gol.board[x][y + 2].state = 1;
      gol.board[x + 3][y + 2].state = 1;
      gol.board[x + 1][y + 3].state = 1;
      gol.board[x + 2][y + 3].state = 1;
      break;
    }
    case 'u': {
      gol.board[x + 1][y].state = 1;
      gol.board[x + 2][y].state = 1;

      gol.board[x][y + 1].state = 1;
      gol.board[x + 2][y + 1].state = 1;
      
      gol.board[x][y + 2].state = 1;
      
      gol.board[x - 1][y + 3].state = 1;
      gol.board[x][y + 3].state = 1;
      break;
    }
    case 'i': {
      gol.board[x + 1][y].state = 1;
      
      gol.board[x][y + 1].state = 1;
      gol.board[x + 2][y + 1].state = 1;
      
      gol.board[x][y + 2].state = 1;
      gol.board[x + 3][y + 2].state = 1;
      
      gol.board[x + 1][y + 3].state = 1;
      gol.board[x + 2][y + 3].state = 1;
      break;
    }
    case 'o': {
      break;
    }
    default: {
    }
    
  
  }
  
  //println(x + "," + y);
}

// reset board when mouse is pressed
void mouseClicked() {
  //gol.init();
  int x = mouseX/16;
  int y = mouseY/16;
  
  
  /*
  gol.board[x][y+1].state = 1;
  gol.board[x+1][y].state = 1;
  gol.board[x+1][y+1].state = 1;
  gol.board[x+1][y].state = 1;


  
  #$#
  ##$
  $$$
  
  gol.board[x][y].state = 1;
  gol.board[x+1][y+1].state = 1;
  gol.board[x+1][y+2].state = 1;
  gol.board[x][y+2].state = 1;
  gol.board[x-1][y+2].state = 1;
  */
}


void mousePressed() {
  //gol.board[mouseX/8][mouseY/8].state = 1;
  //println(mouseX + " , " +mouseY);
}
