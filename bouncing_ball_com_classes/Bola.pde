class Bola{
  int diametro;
  float posX, posY;

  float velX;
  float velY;

  int direcaoX = 1;
  int direcaoY = 1;
  
  Bola(){
    diametro = 40;
    velX = 2.8;
    velY = 2.2;
    posX = width/2;
    posY = width/2;
  
  }
  void desenhaBola(){
    noStroke();
    ellipseMode(RADIUS);
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
  
}
