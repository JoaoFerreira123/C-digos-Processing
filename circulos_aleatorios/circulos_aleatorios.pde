float tamX = 30;
float tamY = 30;
float circX = 300;
float circY = 300;
float R=0;
float G=0;
float B=0;
float t=0;

void setup(){
  size(600,600); 
  background(255);
}

void draw(){
  fill(R,G,B,t);
  ellipse(circX, circY, tamX, tamY);
  circX=random(width);
  circY=random(height);
  R=random(255);
  G=random(255);
  B=random(255);
  t=random(255);
}
