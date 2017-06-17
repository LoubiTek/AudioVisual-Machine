byte TextSize_16 = 16;

String[] Changelog;
byte UnsignedFive = 5;
byte SignedFive = -5;
byte NumberTwenty = 20;

String Wel_Intro = "Welcome to AV Machine !";
byte Wel_y = NumberTwenty;

String NameMachine_V = "AudioVisual Machine "+ "Version " + V;
byte NameMachine_y = NumberTwenty;

String Press_Key = "Press the key :)";
int PressKey_y = 115;

String MAO = "Make the MAO !";
int MAO_x = 0;
byte MAO_y = 64;

String Sleep = "Go to sleep!";
int Sleep_y = 200 + SignedFive;

String Morning = "Good morning!";
int Morning_y = 200 + SignedFive;

String Afternoon = "Good afternoon!";
int Afternoon_y = 200 + SignedFive;

String Evening = "Good evening!";
int Evening_y = 200 + SignedFive;

String Night = "Good night!";
int Night_y = 200 + SignedFive;

// Texts
void Texts()
{ 
  text("|"+ y,width - 60,20);
  
  fill(Pink[1]);
  textSize(TextSize_16 +2);
  text(MAO,MAO_x,MAO_y);
  MAO_x++;
  if (MAO_x >= width)
  {
    MAO_x = -135;
  }
  
  fill(Pink[3]--);
  if (hour() < UnsignedFive)
  {
    //between midnight and 5AM
    text(Sleep, UnsignedFive, Sleep_y);
  } 
  else if (hour() < 12)
  {
    //between 5AM and noon
    text(Morning, UnsignedFive, Morning_y);
  } 
  else if (hour() < 16)
  {
    //between noon and 4PM
    text(Afternoon, UnsignedFive, Afternoon_y);
  } 
  else if (hour() < 21)
  {
    //between 4PM and 9PM
    text(Evening, UnsignedFive, Evening_y);
  } 
  else
  {
    //between 9PM and midnight
    text(Night, UnsignedFive, Night_y);
  }
  
  fill(Pink[2]);
  textSize(TextSize_16 - 4);
  text("TEST = USE // <-(L) MOVE (R)-> // READY!", UnsignedFive,85);
  text("And press touch k,o,h,s for play sounds", UnsignedFive,100);
  text(Press_Key, UnsignedFive, PressKey_y);
}
