// Text to Speech
import guru.ttslib.*;
TTS tts;

// Voice
void Voice()
{
  tts = new TTS();
  
  tts.setPitch(128);
  tts.setPitchRange(64);
  tts.setPitchShift(2);
}
