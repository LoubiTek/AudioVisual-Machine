int m = millis();
int sec = second();
int min = minute();
int h = hour();
int d = day();
int mon = month();
int y = year();

void Clock()
{
  textSize(TextSize_16);
  fill(Pink[1]);
  text(h + ":" + min, 160, 200 + SignedFive);
}
