void setup(){
  size(800,700);
  loadPixels();
  
}


void draw(){
  for(int x = 0; x<width; x++){
    for(int y = 0; y<height; y++){
      pixels[x+y*width] = color (0,0,x/2);
    }
  }
  
  updatePixels();
}
