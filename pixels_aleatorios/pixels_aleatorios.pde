void setup(){
  size(800,700);
  loadPixels();
}

void draw(){
  for(int i = 0; i<pixels.length; i++){
  pixels[i] = color (random(255),random(255),0);
  }
  updatePixels();
}
