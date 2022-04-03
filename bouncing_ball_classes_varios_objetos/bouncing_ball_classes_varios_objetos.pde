Bola b1;
Bola b2;
Bola b3;
Bola b4;
Bola b5;


void setup(){
  size(600,400);
  b1 = new Bola(10);
  b2 = new Bola(20);
  b3 = new Bola(30);
  b4 = new Bola(40);
  b5 = new Bola(50);
}


void draw(){
  background(50);
  b1.desenhaBola();
  b1.testaBordas();
  b1.animacao();
  
  b2.desenhaBola();
  b2.testaBordas();
  b2.animacao();
  
  b3.desenhaBola();
  b3.testaBordas();
  b3.animacao();
  
  b4.desenhaBola();
  b4.testaBordas();
  b4.animacao();
  
  b5.desenhaBola();
  b5.testaBordas();
  b5.animacao();
  
}
