PImage caperucita;

void setup () {
  size (1000, 1000);
  caperucita = loadImage("foto 1 caperucita roja.png");
  caperucita. loadPixels ();
}

void draw () {
  image (caperucita, 0, 0);
}
