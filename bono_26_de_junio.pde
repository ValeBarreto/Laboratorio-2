int x = 0;
int y = 70;

float radio;

void setup() {
  size (1000, 1000);
  background (0);
  noStroke();
  frameRate (30);
}

void draw() {
  float numAleatorio = random (0, 1);
  radio = (numAleatorio * width/2);


  fill(random (215), 23, 30, 70);
  ellipse (x, y, radio, radio);

  x += 70;

  // controlar el ejec vertical
  if (x > width) {
    x = 0;
    y = y + 70;

    //CONTROLAR EL EJE HORIZONTAL
    if (y > height) {
      y = 70;
      background (0);
    }
  }
}
