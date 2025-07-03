PImage caperucita;
PImage lobo;
void setup () {
  size (1000, 1000);
  caperucita = loadImage("foto 1 caperucita roja.png");
  caperucita. loadPixels ();
  lobo= loadImage("lobo.JPG");
  lobo.loadPixels();
}

void draw () {
  image (caperucita, 0, 0);
  image(lobo,0,0);
}
