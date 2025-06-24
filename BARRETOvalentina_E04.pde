int h;
int m;
int s;

String timeString;

void setup() {
  size (700, 700);
}

void draw() {
  background (255);
  noStroke();

  h = hour ();
  m = minute ();
  s = second ();

  //DECORACION FONDO

  fill (172, 197, 203);// pastel blue
  ellipse (350, 350, 700, 700);

  fill (59, 137, 156);// jelly bean blue
  ellipse (350, 350, 600, 600);

  fill (96, 148, 163); // cadet blue
  ellipse (350, 350, 500, 500);

  fill (213, 58, 46); // cg red
  ellipse (350, 350, 400, 400);

  fill (227, 98, 74); // fire opal
  ellipse (350, 350, 300, 300);


  //CIRCULO GRANDE
  fill (255);
  ellipse (350, 350, 200, 200);


  timeString = nf(h, 2) + ':' + nf(m, 2)+ ':' + nf(s, 2);
  println(timeString);

  textSize (100);
  fill (0);
  text(timeString, 180, 380);
}
