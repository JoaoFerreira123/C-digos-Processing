float posX = 0;
float posY = 0;

void setup(){
  size(600,500);
  
}

void draw(){
  background(150);
  fill(255,70,0);
  noStroke();
  ellipse(posX, posY, 70,70);
  posX=posX+2;
  posY=posY+2;
  
  if(posX>width && posY>height){
    posX=0;
    posY=0;
  }
  
}
