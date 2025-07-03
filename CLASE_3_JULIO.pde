PImage caperucita;
PImage s;
void setup () {
  size (1000, 1000);
  caperucita = loadImage("foto 1 caperucita roja.png");
  caperucita. loadPixels ();
  s= loadImage("s.JPG");
  s.loadPixels();
}

void draw () {
  image (caperucita, 0, 0);
  image(s,0,0);
}
