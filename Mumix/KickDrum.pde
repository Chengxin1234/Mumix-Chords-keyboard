
//kick drum
PImage img8;
/**
name 
studen id
this is my part
**/
class KickDrum{
  
  void display(){
    //Kick Drum
    img8 = loadImage("kickDrumIcon.png");
    image(img8, 750,95,40,40);
  }
  
  void keyPressed(){
   //kick drum
   if (key == '3'){
     player= minim.loadFile("kickDrum.wav");
     player.play();
   }
  }
}
