//Snare
PImage img6;
class Snare{
  
  Snare(){
    img6 = loadImage("snareIcon.png");
  }
  
  void display(){
    //Snare icon
    image(img6, 750,5,40,40);
    
  }
  
  
  
  void keyPressed(){
   //snare
   if (key == '1'){
     player= minim.loadFile("snare.wav");
     player.play();
   }
  }
  
  
}
