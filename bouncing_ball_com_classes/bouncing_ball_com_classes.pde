Bola b;

void setup(){
  size(600,400);
  b = new Bola();
}

void draw(){
  background(50);
  b.desenhaBola();
  b.testaBordas();
  b.animacao();
  
}



  
