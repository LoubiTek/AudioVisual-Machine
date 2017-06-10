// Texts

void Texts()
{
  fill(Pink[1]);
  if (hour() < 5)
  {
    //between midnight and 5AM
    text("Go to sleep!", 5, height-5);
  } 
  else if (hour() < 12)
  {
    //between 5AM and noon
    text("Good morning!", 5, height-5);
  } 
  else if (hour() < 16)
  {
    //between noon and 4PM
    text("Good afternoon!", 5, height-5);
  } 
  else if (hour() < 21)
  {
    //between 4PM and 9PM
    text("Good evening!", 5, height-5);
  } 
  else
  {
    //between 9PM and midnight
    text("Good night!", 5, height-5);
  }
  
  /* Add Credit
  textSize(12);
  fill(Pink[2]);
  text("Software By LoubiTek",100,100);
  */
  
  fill(Pink[3]);
  textSize(TextSize_16 - 4);
  text("TEST = USE // <-(L) MOVE (R)-> // READY!", 10,100);
}