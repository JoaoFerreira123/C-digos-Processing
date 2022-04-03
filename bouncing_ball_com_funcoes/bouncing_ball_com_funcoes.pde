int diametro = 40;
float posX, posY;

float velX = 2.8;
float velY = 2.2;

int direcaoX = 1;
int direcaoY = 1;

void setup(){
  size(600,400);
  noStroke();
  ellipseMode(RADIUS);
  posX = width/2;
  posY = height/2;
}

void draw(){
  background(50);
  desenhaBola();
  testaBordas();
  animacao();
}

void desenhaBola(){
  fill(255,255,0);
  ellipse(posX, posY, diametro, diametro);
}

void testaBordas(){
    //Testa se a bola sai do limite da tela. Se sair, muda a direcao da bola!
  if (posX> width-diametro || posX< diametro){
    direcaoX = direcaoX * -1; 
  }else if(posY>height-diametro || posY<diametro){
    direcaoY = direcaoY * -1;
  }
}
  
void animacao(){
  //Fazer a animação da bola
  posX = posX + (velX * direcaoX);
  posY = posY + (velY * direcaoY);
  
}
