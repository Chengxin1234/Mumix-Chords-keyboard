// Tom Drum
PImage img11;

class TomDrum{
  
  TomDrum(){
  
  }
  
  void display(){
    //TomDrum icon
    img11 = loadImage("tomDrumIcon.png");
    image(img11, 750,220,40,40);
  }
  
  void keyPressed(){
   //tom drum
   if (key == '6'){
     player= minim.loadFile("tom.wav");
     player.play();
   }
  }
}
