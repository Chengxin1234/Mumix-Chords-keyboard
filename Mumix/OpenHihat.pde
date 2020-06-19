//openhihat
PImage img9;

class OpenHihat{
  
  void display(){
    //openHihat icon
    img9 = loadImage("openHihatIcon.png");
    image(img9,750,135,40,40);
  }
  
  void keyPressed(){
   //openHihat
   if (key == '4'){
     player= minim.loadFile("openHihat.wav");
     player.play();
   }
  }
}
