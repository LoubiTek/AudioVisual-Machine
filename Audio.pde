// Audio
import ddf.minim.Minim;
import ddf.minim.AudioPlayer;
import ddf.minim.AudioOutput;

Minim minim;
AudioPlayer[] samples = new AudioPlayer[3];
AudioPlayer[] drumkit = new AudioPlayer[4];
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
  drumkit[0] = minim.loadFile("drumkit/kick.wav");
  drumkit[1] = minim.loadFile("drumkit/open hat.wav");
  drumkit[2] = minim.loadFile("drumkit/hit hat.wav");
  drumkit[3] = minim.loadFile("drumkit/snare.wav");
}
