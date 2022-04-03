import processing.video.*;

Capture video;
int x = 0;
void setup(){
  size(640,480);
  video = new Capture(this, 640, 480);
  video.start();
  
}

void captureEvent(Capture video){
  video.read();
}
void draw(){
 copy(video, width/2, 0, 1, height, x,0,1,height);
 x = x+1;
}
