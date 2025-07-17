Table table;
int nSamples;

float[] year;
float[] democracyScore;
String[] countryNames;

int puntoActivo = -1;

void setup() {
  size(1000, 1000);
  textFont(createFont("Georgia", 20));

  table = loadTable("democracy-index-eiu.csv", "header");
  nSamples = table.getRowCount();

  year = new float[nSamples];
  democracyScore = new float[nSamples];
  countryNames = new String[nSamples];

  for (int i = 0; i < nSamples; i++) {
    year[i] = table.getFloat(i, "Year");
    democracyScore[i] = table.getFloat(i, "Democracy score");
    countryNames[i] = table.getString(i, "Entity");
  }
}

void draw() {
  background(213, 184, 147);

  float graphWidth = 900;
  float graphHeight = 900;

  float minX = min(year);
  float maxX = max(year);
  float minY = min(democracyScore);
  float maxY = max(democracyScore);

  puntoActivo = -1;

  pushMatrix();
  translate((width - graphWidth) / 2, (height - graphHeight) / 2);

  for (int i = 0; i < nSamples; i++) {
    float x = map(year[i], minX, maxX, 50, graphWidth - 50);
    float y = map(democracyScore[i], minY, maxY, graphHeight - 50, 50);

    float mx = mouseX - (width - graphWidth) / 2;
    float my = mouseY - (height - graphHeight) / 2;

    boolean mouseSobre = dist(mx, my, x, y) < 6;

    if (mouseSobre && puntoActivo == -1) {
      puntoActivo = i;
    }

    if (mouseSobre) {
      fill(255); // blanco si está activo
    } else {
      fill(13, 39, 61); 
    }

    noStroke();
    ellipse(x, y, 6, 6);
  }

  popMatrix();

  if (puntoActivo != -1) {
    fill(255);
    textAlign(LEFT);
    text("Country: " + countryNames[puntoActivo], 20, 30);
    text("Year: " + nf(year[puntoActivo], 0, 0), 20, 50);
    text("Democracy Score: " + nf(democracyScore[puntoActivo], 0, 2), 20, 70);
  }
}
