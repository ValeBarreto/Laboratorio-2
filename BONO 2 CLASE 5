int size = 100;

int centroHorizontal;
int centroVertical;


int posBordeSuperior;
int posBordeInferior;
int posBordeIzquierdo;
int posBordeDerecho;

void setup() {
  size (700, 700);
  centroHorizontal = width/2;
  centroVertical = height/2;
}

void draw() {
  background (146, 173, 164);
  noStroke();

  posBordeSuperior = centroHorizontal - (size/2) ;
  posBordeInferior = centroHorizontal + (size/2);
  posBordeIzquierdo = centroVertical - (size/2);
  posBordeDerecho = centroVertical + (size/2);

  //if (mouseX > posBordeIzquierdo
  //&& mouseX < posBordeDerecho
  //&& mouseY > posBordeSuperior
  //  && mouseY < posBordeDerecho) {
 
    if((keyPressed ==true) && ((key == 'L' || (key == 'L')))){
    fill (13, 39, 61);
  println("inicio zona interactiva");
} else {
  fill (255);
}

rectMode(CENTER);
rect (width/2, height/2, size, size);
}

//if((keyPressed == true)){ ... tocas cualquiera y cambia de color
