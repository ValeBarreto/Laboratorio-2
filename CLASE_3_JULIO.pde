PImage caperucita;
PImage lobo;
PImage finalLobo;

void setup () {
  size (1000, 1000);
  caperucita = loadImage("foto 1 caperucita roja.png");
  caperucita. loadPixels ();
  lobo= loadImage("lobo.JPG");
  lobo.loadPixels();
  finalLobo = loadImage ("C3.PNG");
  finalLobo. loadPixels ();
}

void draw () {
  image (caperucita, 0, 0);
  image(lobo,0,0);
  image (finalLobo, 0, 0);

}
