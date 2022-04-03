class Bolas{
  float diametro1;
  float diametro2;
  float posX1, posY1;
  float posB2X, posB2Y;

  float velX1;
  float velY1;
  
  

  int direcaoX = 1;
  int direcaoY = 1;
 
  
  Bolas(){
    diametro1 = 60;
    diametro2 = 20;
    velX1 = 4;
    velY1 = 4;
    posX1 = width/2;
    posY1 = height/2;
    posB2X = width;
    posB2Y = height;
   
  
  }
  void desenhaBola1(){
    noStroke();
    ellipseMode(RADIUS);
    fill(255,0,0);
    ellipse(posX1, posY1, diametro1, diametro1);
  }
  
  void desenhaBola2(){
    noStroke();
    ellipseMode(RADIUS);
    //for(float i = 0; i<255; i=i+0.1){
    //  fill(255,0,0,i);
    //}
    fill(255,0,0);
    ellipse(posB2X, posB2Y, diametro1, diametro1);
    
  
  }
  
  void testaBordas1(){
      //Testa se a bola sai do limite da tela. Se sair, muda a direcao da bola!
    if (posX1> width-diametro1 || posX1< diametro1){
      direcaoX = direcaoX * -1; 
    }else if(posY1>height-diametro1 || posY1<diametro1){
      direcaoY = direcaoY * -1;
      }
   }
  
    void testaBordas2(){
      //Testa se a bola sai do limite da tela. Se sair, muda a direcao da bola!
    if (posB2X> width-diametro1 || posB2X< diametro1){
      direcaoX = direcaoX * -1; 
    }else if(posB2Y>height-diametro1 || posB2Y<diametro1){
      direcaoY = direcaoY * -1;
      }
   }
  
  void animacao1(){
    //Fazer a animação da bola p1
    posX1 = posX1 + (velX1 * direcaoX);
    posY1 = posY1 + (velY1 * direcaoY);
    
  }
  
   void animacao2(){
    //Fazer a animação da bola p2
    posB2X = posB2X - (velX1 * direcaoX);
    posB2Y = posB2Y - (velY1 * direcaoY);
    
  } 
  
  void bolaPlayer(){
    fill(0,255,0);
    ellipse(mouseX, mouseY, diametro2, diametro2);
  }
  
  boolean encosta (Bolas outra) {
    float d = dist(posX1, posY1, mouseX+diametro2, mouseY+diametro2);
    if (d < diametro1 + diametro2) {
      return true;
    }else {
      return false;
    }
  }
  
  void parada(){
    posX1 = width/2;
    posY1 = height/2;
    velX1 = 4;
    velY1 = 4;
    diametro1 = 60;
  }
  
  void aumentaVel(){
    if(pontos>0 && pontos <10){
      velX1 = velX1 + 0.01;
      velY1 = velY1 + 0.01;
    }else if(pontos>15 && pontos<20){
      velX1 = velX1 + 0.02;
      velY1 = velY1 + 0.02;
    }else if(pontos>20 && pontos<25){
      velX1 = velX1 + 0.025;
      velY1 = velY1 + 0.025;
    }else if(pontos>25 && pontos <30){
      velX1 = velX1 + 0.01;
      velY1 = velY1 + 0.01;
    }
  }
  
  void aumentaTam(){
    if(pontos>5 && pontos<8){
      diametro1 = diametro1 + 0.5;
    }else if(pontos>10 && pontos<13){
      diametro1 = diametro1 - 0.5;
    }   
  }

  void outraBola (){
    if (pontos > 10)
     desenhaBola2();
     for(int i = 0; i>diametro2; i++){
       posB2X = posB2X + 10*i;
       posB2Y = posB2Y + 10*i;
     }
  }

  // A BOLA 2 N SE MEXE, N SEI PQ 
}
