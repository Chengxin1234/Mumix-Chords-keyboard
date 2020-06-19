// music shaker
PImage img10;

class MusicShaker{
  
  void display(){
    //shaker icon
    img10 = loadImage("shakerIcon.png");
    image(img10, 750,180,40,40);
  }
  
  void keyPressed(){
   //music shaker
   if (key == '5'){
     player= minim.loadFile("shaker.wav");
     player.play();
   }
  }
}
