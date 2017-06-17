// Audio
import ddf.minim.Minim;
import ddf.minim.AudioPlayer;
import ddf.minim.AudioSample;
import ddf.minim.AudioOutput;

Minim minim;
AudioPlayer[] samples = new AudioPlayer[3];
AudioSample[] drumkit = new AudioSample[4];
AudioOutput out;

byte s = byte(random(samples.length));
int note = 0;

// LoadAudio
void LoadAudio()
{
  minim = new Minim(this);
  out = minim.getLineOut(Minim.MONO,256);
  out.setGain(-2);
  
  for (byte s = 0; s < samples.length; s++)
  {
    samples[s] = minim.loadFile("samples/" + s + ".wav");
    samples[s].setGain(-32);
  }
  
  // drumkit
  drumkit[0] = minim.loadSample("drumkit/kick.wav",256);
  if (drumkit[0] == null)
  {
    println("Error, no file kick sample!");
  }
  drumkit[1] = minim.loadSample("drumkit/open hat.wav",256);
  if (drumkit[1] == null)
  {
    println("Error, no file open hat sample!");
  }
  drumkit[2] = minim.loadSample("drumkit/hit hat.wav",256);
  if (drumkit[2] == null)
  {
    println("Error, no file hit hat sample!");
  }
  drumkit[3] = minim.loadSample("drumkit/snare.wav",256);
  if (drumkit[3] == null)
  {
    println("Error, no file snare sample!");
  }
}
