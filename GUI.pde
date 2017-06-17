// GUI
import controlP5.*;
ControlP5 cp5;

void GUI()
{
  cp5 = new ControlP5(this);
  
  //Show FPS
  cp5.addFrameRate().setInterval(1).setPosition(width -20,0);
  
  // Menu
  cp5.addButton("Start").setColorBackground(Pink[1]).setColorForeground(Pink[2]).setColorActive(Pink[0]).setColorLabel(Pink[3]).setValue(0).setPosition(256,108).setSize(64,16);
  cp5.addButton("Options").setColorBackground(Pink[1]).setColorForeground(Pink[2]).setColorActive(Pink[0]).setColorLabel(Pink[3]).setValue(0).setPosition(256,128).setSize(64,16);
  cp5.addButton("Credit").setColorBackground(Pink[1]).setColorForeground(Pink[2]).setColorActive(Pink[0]).setColorLabel(Pink[3]).setValue(0).setPosition(256,148).setSize(64,16);
  cp5.addButton("Exit").setColorBackground(Pink[1]).setColorForeground(Pink[2]).setColorActive(Pink[0]).setColorLabel(Pink[3]).setValue(0).setPosition(256,168).setSize(64,16);
}
