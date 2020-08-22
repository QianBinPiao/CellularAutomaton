// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class GOL {

  int w = 16;
  int columns, rows;

  // Game of life board
  Cell[][] board;


  GOL() {
    // Initialize rows, columns and set-up arrays
    columns = width/w;
    rows = height/w;
    board = new Cell[columns][rows];
    init();
  }

  void init() {
    for (int i = 0; i < columns; i++) {
      for (int j = 0; j < rows; j++) {
        board[i][j] = new Cell(i*w, j*w, w, 0);
      }
    }
    
    board[columns/2][rows/2].state = 1;
  }

  // The process of creating the new generation
  void generate() {
     for ( int i = 0; i < columns;i++) {
      for ( int j = 0; j < rows;j++) {
        board[i][j].savePrevious();
      }
    }
    

    // Loop through every spot in our 2D array and check spots neighbors
    for (int x = 0; x < columns; x++) {
      for (int y = 0; y < rows; y++) {
        /*
        if (board[x][y].state == 1) { 
          board[(x+1 + columns)%columns][y].newState(1); 
          board[(x-1 + columns)%columns][y].newState(1); 
          board[x][(y + 1 + rows)%rows].newState(1); 
          board[x][(y - 1 + rows)%rows].newState(1); 
        }
        */
        // Add up all the states in a 3x3 surrounding grid
        
        int neighbors = 0;
        
        for (int i = -1; i <= 1; i = i + 2) {
          for (int j = -1; j <= 1; j = j + 2) {
            //neighbors += board[(x+i+columns)%columns][(y+j+rows)%rows].previous;
            neighbors += board[(x+i+columns)%columns][(y+j+rows)%rows].previous;
          }
        }
        
        
        //neighbors += board[(x+ (-1)+columns)%columns][(y+rows)%rows].previous;
        //neighbors += board[(x+ (1)+columns)%columns][(y+rows)%rows].previous;
        //neighbors += board[(x+columns)%columns][(y+(-1)+rows)%rows].previous;
        //neighbors += board[(x+columns)%columns][(y+(1)+rows)%rows].previous;
        
        //println(neighbors);

        // A little trick to subtract the current cell's state since
        // we added it in the above loop
        neighbors -= board[x][y].previous;

        // Rules of Life 2 3 3
        // Rules of Life 3 4 4
        
                 // Loneliness
        //else if ((board[x][y].state == 1) && (neighbors >  3)) board[x][y].newState(0);           // Overpopulation
        //else if ((board[x][y].state == 0) && (neighbors == 3)) board[x][y].newState(1);           // Reproduction
        if (neighbors > 5) {
          // 6 ~ 9 die
          board[x][y].newState(1);
          //board[x][y].lifeSpan = 4;
          //board[x][y].decreaseLifeSpan();
        } else {
          
          // 0 ~ 5 copy
        
        }
        
        if (board[x][y].state == 1) {
          board[x][y].decreaseLifeSpan();
        }
        // else do nothing!
      }
    }
  }

  // This is the easy part, just draw the cells, fill 255 for '1', fill 0 for '0'
  void display() {
    for ( int i = 0; i < columns;i++) {
      for ( int j = 0; j < rows;j++) {
        board[i][j].display();
      }
    }
  }
}
