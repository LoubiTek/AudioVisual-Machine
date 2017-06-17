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

// LinesVisualizer
void LinesVisualizer()
{
  // use the mix buffer to draw the waveforms.
  for (int i = 0; i < drumkit[0].bufferSize() - 1; i++)
  {
    float x0 = map(i, 0, drumkit[0].bufferSize(), 0, width);
    stroke(random(256), random(256), random(256));
    line(x0, height/2 - drumkit[0].mix.get(i)*50, x0, height/2 - drumkit[3].mix.get(i+1)*50);
    line(x0, height/2 - drumkit[1].mix.get(i)*50, x0, height/2 - drumkit[2].mix.get(i+1)*50);
    line(x0, height/2 - drumkit[2].mix.get(i)*50, x0, height/2 - drumkit[1].mix.get(i+1)*50);
    line(x0, height/2 - drumkit[3].mix.get(i)*50, x0, height/2 - drumkit[0].mix.get(i+1)*50);
  } 
}
