PShape AV_Logo;

import com.corajr.loom.*;
Loom loom;
Pattern pattern;

// Visual
void Visual()
{
  loom = new Loom(this); //add ,BPM
  pattern = new Pattern(loom)
  .extend("0123")
  .loop();
  
  pattern.asColor(Pink[0], Pink[1], Pink[2], Pink[3]);
  loom.play();
}

// DrawGrid
void DrawGrid()
{ 
  for (int i = 0; i < cols; i ++ )
  {     
    for (int j = 0; j < rows; j ++ )
    {
      // Oscillate and display each object
      grid[i][j].oscillate();
      grid[i][j].display();
    }
  }
}
