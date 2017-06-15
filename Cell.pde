// 2D Array of objects
Cell[][] grid; 

// Number of columns and rows in the grid
byte cols = 16;
byte rows = 10;

// A Cell object
class Cell
{
  // A cell object knows about its location in the grid 
  // as well as its size with the variables x,y,w,h
  float x,y;   // x,y location
  float w,h;   // width and height
  float angle; // angle for oscillating brightness

  // Cell Constructor
  Cell(float tempX, float tempY, float tempW, float tempH, float tempAngle)
  {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    angle = tempAngle;
  } 
  
  // Oscillation means increase angle
  void oscillate()
  {
    angle += 0.01;
  }

  void display()
  {
    stroke(Pink[0]);
    // Color calculated using sine wave
    fill(Pink[3]*sin(angle*PI));
    rect(x,y,w,h);
  }
}

//Grid
void Grid()
{
  grid = new Cell[cols][rows];
  // The counter variables i and j are also the column and row numbers
  // In this example, they are used as arguments to the constructor for each object in the grid.
  for (int i = 0; i < cols; i++ )
  {
    for (int j = 0; j < rows; j++ )
    {
      // Initialize each object
      grid[i][j] = new Cell(i*20, j*20, 20, 20, i + j);
    }
  }
}
