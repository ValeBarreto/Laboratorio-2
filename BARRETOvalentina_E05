import processing.sound.*;

//IMPORTAR LA LIBRERIA SOUND
import processing.sound.*;
import processing.sound.FFT;

SoundFile soundfile;
FFT fft;

//NUMERO DE BANDAS DE FRECUENCIAS
int bands = 256;

//ARRAY PARA GUARDAR ESPECTRO DE FRECUENCIAS
float[] spectrum = new float[bands];

int x = 0;
int y = 70;

float radio;

void setup() {
  size (1000, 1000);
  background (0);
  noStroke();

  //IMPORTAR LA CANCION
  soundfile = new SoundFile(this, "Dont you worry child.mp3");

  //CREAR EL ANALIZADOR DE FRECUENCIAS
  fft = new FFT(this, bands);

  //ANALICE LA CANCION
  fft.input(soundfile);

  //REPRODUCIR LA CANCION
  soundfile.play();
}

void draw() {
  fft.analyze(spectrum);

  //float randomFreq = random(255);

  float level = spectrum[122] * 100;
  radio = (level * width/2);

  radio = constrain(radio, 10, 700 );

  ellipse (x, y, radio, radio);
  //stroke (0);


  if (x < 100) {
    fill(230, 230, 230, 128);   // casi blanco
  } else if (x < 200) {
    fill(225, 225, 225, 128);
  } else if (x < 300) {
    fill(215, 215, 215, 128);
  } else if (x < 400) {
    fill(200, 200, 200, 128);
  } else if (x < 500) {
    fill(180, 180, 180, 128);
  } else if (x < 600) {
    fill(150, 150, 150, 128);
  } else if (x < 700) {
    fill(120, 120, 120, 128);
  } else if (x < 800) {
    fill(90, 90, 90, 128);
  } else if (x < 900) {
    //fill(50, 50, 50, 100);
    fill(0, 0, 0, 128);    //NEGRO
  } else {
    fill (242, 7, 7, 128);
  }

  x += 10;

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
