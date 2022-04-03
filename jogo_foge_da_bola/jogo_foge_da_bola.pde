Bolas p1;
Bolas f;
Bolas p2;

PFont fonte1;

int pontos = 0;
int gameMode = 0;
boolean perdeu;

void setup(){
  size(800,600);
  p1 = new Bolas();
  p2 = new Bolas();
  f = new Bolas();
  fonte1 = loadFont("Tahoma-Bold-20.vlw");
  textFont(fonte1);
  
}

void draw(){
  background(50);
  
  if(gameMode == 0){ //comeca na tela inicial
    inicio();
    if(mouseButton == LEFT){ //se clicar o jogo começa
      gameMode = 1;
    }
  }else if(gameMode == 1){ //modo de jogo
    jogo();
  }else if(gameMode == 2){ //tela de perdeu
    perdeu();
    if(mouseButton == LEFT){ //se clicar volta para o jogo
      gameMode = 1;
      p1.parada();
    }
  }
}

void inicio(){
  background(50);
  textSize(60);
  textAlign(CENTER);
  fill(255);
  text("Foge da Bola", width/2, height/2);
  textSize(20);
  textAlign(CENTER);
  //fill();
  text("Clique para Começar", width/2, (height/2+70));
  
  

}

void jogo(){
  if (p1.encosta(f)){
    p1.parada();
    gameMode = 2;
    perdeu=true;
  }else{
    p1.desenhaBola1();
    p1.testaBordas1();
    p1.animacao1();
    p1.aumentaVel();
    p1.aumentaTam();
    f.bolaPlayer();
    if(pontos > 15){
      p2.desenhaBola2();
      p2.testaBordas2();
      p2.animacao2();
    }
    pontos = millis()/1000;
    textSize(40);
    fill(255);
    text(pontos, 20,35);
  }
}

void perdeu(){
  background(50);
  textSize(60);
  textAlign(CENTER);
  fill(255);
  text("Você Perdeu", width/2, height/2);
  textSize(20);
  text("Pontuação:", width/2, (height/2+70));
  text(pontos, width/2+70, height/2+70);
  textAlign(CENTER);
  text("Clique para Recomeçar", width/2, (height/2+140));
  }
