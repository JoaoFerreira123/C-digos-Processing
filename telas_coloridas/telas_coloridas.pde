void setup(){
  size(640,360);
}
    
void draw(){
  background(0);
  
  if((mouseX>width/2) && (mouseY>height/2)){
    fill(0,255,0);
    rect(320,180,320,180);
  }else if(mouseX>width/2 && mouseY<height/2){
    fill(255,0,0);
    rect(320,0,320,180);
  }else if(mouseX<width/2 && mouseY>height/2){
    fill(0,0,255);
    rect(0,180,320,180);
  }else{
    fill(250,255,0);
    rect(0,0,320,180);
  }
  
  stroke(255);
  line(0,180,width,height/2);
 
  stroke(255);
  line(320,0,width/2,height);
 
}
