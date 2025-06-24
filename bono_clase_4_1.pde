int h;
int m;
int s;

String timeString;

void setup() {
  size (700, 700);
}

void draw() {
  background (175, 220, 205);

  h = hour ();
  m = minute ();
  s = second ();

  fill (132, 186, 191);
  noStroke();
  ellipse (350, 350, 270, 270);

  timeString = nf(h, 2) + ':' + nf(m, 2)+ ':' + nf(s, 2);
  println(timeString);

  textSize (60);
  fill (23, 80, 106);
  text(timeString, 245, 370);
}
