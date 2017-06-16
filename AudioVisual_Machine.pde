// LoubiTek| AudioVisual Machine |2017

String GFX = JAVA2D;
byte FPS = 30;

float V = 0.3;

boolean SoftWareLoop = true;
boolean SoftWare = false;
boolean Intro = true;
boolean Welcome = true;
boolean Start = false;
boolean Event = true;
//boolean Sequenceur = false;

//int BPM = 0;

// Init
void Initialize()
{
    size(320, 200, GFX);
    println("Size: 320*200|" + GFX);
}

// Settings
void settings()
{
  Initialize();
  LoadAudio();
}

// Loading
void Loading()
{
  // Read Informations Text
  Changelog = loadStrings("Changelog.txt");
  for (int LatestVersion = 0; LatestVersion < Changelog.length; LatestVersion++)
  {
    println(Changelog[LatestVersion]);
  }
  
  AV_Logo = loadShape("AV_Logo.svg");
}

// Setup
void setup()
{ 
  background(Pink[0]);
  frameRate(FPS);
  smooth(0);
  strokeWeight(1);
  //strokeCap(1);
  //strokeJoin(MITER);
  cursor(HAND);
  textAlign(LEFT);
  
  Grid();
  Voice();
  Visual();
  GUI();
}

// Draw
void draw()
{
  ColorsSwitch();
  Loading();
  
  if (SoftWareLoop == Intro)
  {
    Intro();
  }
  else if (SoftWareLoop == Welcome)
  {
    Welcome();
  }
  else SoftWare();
  
  //println("Frames = " + frameCount + "| FPS = " + frameRate);
}

// Intro
void Intro()
{
  background(Pink[0]);
  text("Welcome to AV Machine !",5,20);
  shape(AV_Logo,0,0);
  
  if (millis() > 5000) // || second() > 5
  {
    Intro = false;
  }
}

// Welcome
void Welcome()
{
  background(Pink[0]); 
  fill(Pink[3]);
  textSize(TextSize_16);
  text("AudioVisual Machine "+ "Version " + V,5,20);
  
  samples[s].play();
  out.playNote(note);
  
  if (note <= 0 || note >= width)
  {
    note = 0;
  }
  
  stroke(random(256), random(256), random(256));
  line(width*note/1000, 0, width*note/1000, height);
  
  Texts();
  
  if(keyPressed)
  {
    Welcome = false;
  }
  
  text("Press the key :)",5,170);
}

// SoftWare
void SoftWare()
{
  DrawGrid();
}

// MousePressed
void mousePressed()
{
  //samples[s].loop();
}

// MouseClicked
void mouseClicked()
{
  
}

// Exit
void Exit()
{
  if (!Start)
  {
    Start = true;
    println("Hello ! Welcome !");
    tts.speak("Hello, Welcome !");
  }   
  else
  {
    Start = false;
    println("Bye Bye !, See a later !");
    tts.speak("Bye Bye !, See a later !");
    delay(1000);
    exit();
  }
}

// KeyPressed
void keyPressed()
{
  if (keyPressed == Event)
  {
    if(key == 107 || key == 75) // ASCII | 115 = k, 83 = K
    {
      drumkit[0].play();
      drumkit[0].rewind();
    }
    if(key == 111 || key == 79) // ASCII | 115 = o, 83 = O
    {
      drumkit[1].play();
      drumkit[1].rewind();
    }
    if(key == 104 || key == 72) // ASCII | 115 = h, 83 = H
    {
      drumkit[2].play();
      drumkit[2].rewind();
    }
    if(key == 115 || key == 83) // ASCII | 115 = s, 83 = S
    {
      drumkit[3].play();
      drumkit[3].rewind();
    }
    if (key == CODED)
    {
      if (keyCode == RIGHT)
      {
        pattern.rect(0, 0, width, height);
        note++;
      }
      if (keyCode == UP)
      {
        
      }
      if (keyCode == LEFT)
      {
        pattern.rect(0, 0, width, height);
        note--;
      }
      if (keyCode == DOWN)
      {
        
      }
      if (keyCode == ESC)
      {
        exit();
      }
    }
  }
}
