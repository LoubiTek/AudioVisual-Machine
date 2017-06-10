// Visual

import com.corajr.loom.*;
Loom loom;
Pattern pattern;

void Visual()
{
  loom = new Loom(this); //add ,BPM
  pattern = new Pattern(loom)
  .extend("0123")
  .loop();
  
  pattern.asColor(#000000, #FF007C, #FF7EBD, #FFFFFF);
  loom.play();
}