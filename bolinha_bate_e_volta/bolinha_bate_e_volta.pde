float posX = 300;
float posY = 250;
float vel = 5;

void setup(){
  size(600,500);
}

void draw(){
  background(80);
  noStroke();
  fill(255, 255,0);
  ellipse(posX, posY, 50,50);

  if(posX>width || posX<0 || posY>height || posY<0){
    vel = vel *-1;  
  }
  posX = posX + vel;
  posY = posY + vel;
}

