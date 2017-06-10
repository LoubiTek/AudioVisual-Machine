// LoubiTek| AudioVisual Machine | 2017

String GFX = JAVA2D;
byte FPS = 30;

float V = 0.0;
byte TextSize_16 = 16;

float note = 0;

boolean Start = false;
boolean MAO = true;
boolean Event = true;
//boolean Sequenceur = false;

byte MAO_x = 0;
byte MAO_y = 64;

//int BPM = 0;

// Init
void Initialize()
{
    //fullScreen();
    size(320, 200, GFX);
    println("Size: 320*200|" + GFX);
}

// Settings
void settings()
{
  Initialize();
  LoadAudio();
}

// Setup
void setup()
{
  background(Pink[0]);
  frameRate(FPS);
  smooth(0);
  strokeWeight(1);
  
  //Voice();
  Visual();
  GUI();
}

// Draw
void draw()
{
  ColorsSwitch();
  Welcome();
  
  println("Frames = " + frameCount + "| FPS = " + frameRate);
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
  
  MAO();
  Texts();
}

void MAO()
{
  if (MAO)
  {
    fill(Pink[1]);
    text("Make the MAO !",MAO_x,MAO_y);
    MAO_x++;
  }
}

// MousePressed
void mousePressed()
{
  samples[s].loop();
}

// Exit
void Exit()
{
  if (!Start)
  {
    Start = true;
    println("Hello ! Welcome !");
    tts.speak("Hello, Welcome !");
    
    println("Click on Start for lunch the sequencer !");
    tts.speak("Click on Start for lunch the sequencer !");
    
    println("Or Click on Exit for close the software !");
    tts.speak("Or Click on Exit for close the software !");
  }   
  else
  {
    Start = false;
    println("Bye Bye !, See a later !");
    tts.speak("Bye Bye !, See a later !");
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
      if (keyCode == LEFT)
      {
        pattern.rect(0, 0, width, height);
        note--;
      }
      if (keyCode == ESC)
      {
        exit();
      }
    }
  }
}