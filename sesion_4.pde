//INICIALIZAR VARIABLES
int numBubbles = 20;

// corchetes indican que es un array y no una variable
float[] xPositions;
float[] yPositions;

float[] xSpeeds;
float []ySpeeds;

int [] xDirections;
int [] yDirections;

void setup() {
  size (1000, 1000);
  background (0);
  noStroke();

  //DEFINIMOS TAMAÑO DEL ARRAY
  xPositions = new float [numBubbles];
  yPositions = new float [numBubbles];

  xSpeeds = new float [numBubbles];
  ySpeeds = new float [numBubbles];

  xDirections = new int [numBubbles];
  yDirections = new int [numBubbles];

  //CREAMOS VALORES
  for (int i = 0; i < xPositions.length; i++ ) {
    xPositions[i] = random(width);
    yPositions[i] = random(width);
    xSpeeds[i] = random(5);
    ySpeeds[i] = random(5);
    xDirections[i] = (random(1) > 0.5) ? 1 : -1 ;
    yDirections[i] = (random(1) > 0.5) ? 1 : -1 ;
  }
}

//VOID DRAW ES UN LOOP ETERNO
void draw() {
  background(0) ;
  for (int i = 0; i < numBubbles; i++ ) {

    //ACTUALIZAR POSICON DE BURBUJAS
    xPositions[i] = xPositions[i] + xSpeeds[i] * xDirections[i] ;
    yPositions[i] = yPositions[i] + ySpeeds[i] * yDirections[i] ;

    //REBOTE CUANDO LLEGUE A EXTREMO IZQUIERDO O DERECHO
    if (xPositions[i] >= width || xPositions[i] < 0) {
      xDirections [i] = xDirections[i] * -1 ;
    }

    if (yPositions[i] > height || yPositions[i] < 0) {
      yDirections[i] = yDirections[i] * -1 ;
    }
    fill (random (50), 
    ellipse (xPositions[i], yPositions[i], 50, 50);
  }
}

//comand T para auto formato (ordenado)
