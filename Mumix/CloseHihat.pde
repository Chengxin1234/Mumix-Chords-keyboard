//close hihat
PImage img7;

class CloseHihat{
  CloseHihat(){
    img7 = loadImage("closeHiHatIcon.png");
  }
  
  void display(){
    //CloseHihat icon
    image(img7,750,50,40,40);
  }
  
    
  
  void keyPressed(){
   //closehihat
   if (key == '2'){
     player= minim.loadFile("closeHihat.wav");
     player.play();
   }
  }
  
}
