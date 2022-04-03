import processing.video.*;

Movie video;

void setup(){
  size(600,400);
  video = new Movie(this, "output.mp4");
  video.play();

}

void movieEvent(Movie video){
  video.read();
}


void draw(){
  image(video, 0, 0);
}
