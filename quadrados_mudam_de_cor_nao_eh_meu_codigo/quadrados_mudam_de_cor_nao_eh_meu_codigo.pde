//To whoever cares... A nice simple Click the box to change color with processing
// Thanks for these awesome tutorials Mr Shiffman.

//rectangle spacing
   int spacing = 30;
//rectangle size : should be equal to spacing so it works well :-)
   int rectSize = 30;
void setup(){
//must be a square screen, width = height for this case
  size(700,700);
  fill(255);
  stroke(25);
  strokeWeight(0.9);
  for(int x=0;x<width;x=x+spacing){
    for(int y=0;y<width;y=y+spacing){
      rect(x,y,rectSize,rectSize);
    }
  }
}

void draw(){
  if(mousePressed){
    fill(random(255),random(255),random(255));

    //rect(mouseX-valueSoThat it is a multiple of 30, ...) 30 being rectSize
    //mouseX % 20 = remainder
    //mouseX - remainder = a mouseX multiple of 30
    /* mouseX = 331, mouseY = 334
      * 331 % 30 = 1 , 334 % 30 = 4
      * mouseX - (331 % 30) = 330. mouseY - (334 % 30) = 330
      */
    
    int multiX = mouseX - (mouseX % rectSize);
    int multiY = mouseY - (mouseY % rectSize);
  //não entendi mto bem essas duas linhas acima. Sei que elas são p/ identificar o quadrado em que o mouse está, mas n entendi como
  //principalmente aquele % ali.
    rect(multiX,multiY,rectSize,rectSize);
  }
}
