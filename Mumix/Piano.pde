
class Piano{
 
 
  color keyColor1 = 255;
  color keyColor2 = 255;
  color keyColor3 = 255;
  color keyColor4 = 255;
  color keyColor5 = 255;
  color keyColor6 = 255;
  color keyColor7 = 255;
  color keyColor8 = 255;
  color keyColor9 = 255;
  color keyColor10 = 255;
  color keyColor11 = 255;
  //black keypress
  color keyColor12 = 0;
  color keyColor13 = 0;
  color keyColor14 = 0;
  color keyColor15 = 0;
  color keyColor16 = 0;
  color keyColor17 = 0;
  color keyColor18 = 0;


  
  Piano(){
    
  }
  
  void display(){
    
    //Keyboard
    //White Key
    stroke(0);
    strokeWeight(1);
    fill(keyColor1);
    rect(15,350,70,230);//A
    fill(keyColor2);
    rect(85,350,70,230);//S
    fill(keyColor3);
    rect(155,350,70,230);//D
    fill(keyColor4);
    rect(225,350,70,230);//F
    fill(keyColor5);
    rect(295,350,70,230);//G
    fill(keyColor6);
    rect(365,350,70,230);//H
    fill(keyColor7);
    rect(435,350,70,230);//J
    fill(keyColor8);
    rect(505,350,70,230);//K
    fill(keyColor9);
    rect(575,350,70,230);//L
    fill(keyColor10);
    rect(645,350,70,230);//;
    fill(keyColor11);
    rect(715,350,70,230);//'
    //Black Key
    fill(keyColor12);
    rect(60, 350, 50, 100);
    fill(keyColor13);
    rect(130, 350, 50, 100);
    fill(keyColor14);
    rect(270, 350, 50, 100);
    fill(keyColor15);
    rect(340, 350, 50, 100);
    fill(keyColor16);
    rect(410, 350, 50, 100);
    fill(keyColor17);
    rect(550, 350, 50, 100);
    fill(keyColor18);
    rect(620, 350, 50, 100);
    
    //Text 
    //Black Key
    fill(255);
    textSize(15);
    text("W", 85, 370);
    text("E", 155, 370);
    text("T", 295, 370);
    text("Y", 365, 370);
    text("U", 435, 370);
    text("O", 575, 370);
    text("P", 645, 370);
    //White Key
    fill(0);
    text("A", 50, 590);
    text("S", 120, 590);
    text("D", 190, 590);
    text("F", 260, 590);
    text("G", 330, 590);
    text("H", 400, 590);
    text("J", 470, 590);
    text("K", 540, 590);
    text("L", 610, 590);
    text(";", 680, 590);
    text("'", 750, 590);
  }
  
 void keyReleased(){
   keyColor1 = color(255);
   keyColor2 = color(255);
   keyColor3 = color(255);
   keyColor4 = color(255);
   keyColor5 = color(255);
   keyColor6 = color(255);
   keyColor7 = color(255);
   keyColor8 = color(255);
   keyColor9 = color(255);
   keyColor10 = color(255);
   keyColor11 = color(255);
   keyColor12 = color(0);
   keyColor13 = color(0);
   keyColor14 = color(0);
   keyColor15 = color(0);
   keyColor16 = color(0);
   keyColor17 = color(0);
   keyColor18 = color(0);
    
 }
 void mouseReleased(){
   keyColor1 = color(255);
   keyColor2 = color(255);
   keyColor3 = color(255);
   keyColor4 = color(255);
   keyColor5 = color(255);
   keyColor6 = color(255);
   keyColor7 = color(255);
   keyColor8 = color(255);
   keyColor9 = color(255);
   keyColor10 = color(255);
   keyColor11 = color(255);
   keyColor12 = color(0);
   keyColor13 = color(0);
   keyColor14 = color(0);
   keyColor15 = color(0);
   keyColor16 = color(0);
   keyColor17 = color(0);
   keyColor18 = color(0);
 }
  
 void keyPressed(){
   //do

    if ((key == 'A') || (key == 'a')){
      
      sc.playNote(60, 120, 2.0);
      

      if (keyColor1 == color(255)){
         keyColor1 = color(204);
       }else{
         keyColor1= color(255);
       }
    }
   
   //re
   if ((key == 'S') || (key == 's')){
    
     sc.playNote(62, 120, 2.0);
     
    if (keyColor2 == color(255)){
       keyColor2 = color(204);
     }else{
       keyColor2 = color(255);
     }
   }
   
  //mi
  if ((key == 'D') || (key == 'd')){
    
    sc.playNote(64, 120, 2.0);
    
    if (keyColor3 == color(255)){
       keyColor3 = color(204);
     }else{
       keyColor3 = color(255);
     }
   }
  //fa
  if ((key == 'F') || (key == 'f')){

    sc.playNote(65, 120, 2.0);
    
    if (keyColor4 == color(255)){
       keyColor4 = color(204);
     }else{
       keyColor4 = color(255);
     }
   }
   
  //sol
  if ((key == 'G') || (key == 'g')){

    sc.playNote(67, 120, 2.0);
    
    if (keyColor5 == color(255)){
       keyColor5 = color(204);
     }else{
       keyColor5= color(255);
     }
   }
   
  //la
  if ((key == 'H') || (key == 'h')){
    
    sc.playNote(69, 120, 2.0);
    
    if (keyColor6 == color(255)){
       keyColor6 = color(204);
     }else{
       keyColor6 = color(255);
     }
   }
  //si
  if ((key == 'J') || (key == 'j')){

     sc.playNote(71, 120, 2.0);
    if (keyColor7 == color(255)){
       keyColor7 = color(204);
     }else{
       keyColor7 = color(255);
     }
   }
   
   //K(DO)
    if ((key == 'K') || (key == 'k')){
    
      sc.playNote(72, 120, 2.0);
    if (keyColor8 == color(255)){
       keyColor8 = color(204);
     }else{
       keyColor8 = color(255);
     }
   }
   
   //L(RE)
    if ((key == 'L') || (key == 'l')){

     sc.playNote(74, 120, 2.0);
    if (keyColor9 == color(255)){
       keyColor9 = color(204);
     }else{
       keyColor9 = color(255);
     }
   }
   //;(ME)
   if ((key == ';')){
 
     sc.playNote(76, 120, 2.0);
    if (keyColor10 == color(255)){
       keyColor10 = color(204);
     }else{
       keyColor10 = color(255);
     }
   }
   
   //'(fa)
   if ((key == 39)){
  
     sc.playNote(77, 120, 2.0);
    if (keyColor11 == color(255)){
       keyColor11 = color(204);
     }else{
       keyColor11 = color(255);
     }
   }
   
   //black W (C#)
   if ((key == 'W') || (key == 'w')){
    
     sc.playNote(61, 120, 2.0);
    if (keyColor12 == color(0)){
       keyColor12 = color(204);
     }else{
       keyColor12 = color(204);
     }
   }
   //black E(D#)
   if ((key == 'E') || (key == 'e')){

     sc.playNote(63, 120, 2.0);
    if (keyColor13 == color(0)){
       keyColor13 = color(204);
     }else{
       keyColor13 = color(204);
     }
   }
   
   //black T(F#)
    if ((key == 'T') || (key == 't')){
    
      sc.playNote(66, 120, 2.0);
    if (keyColor14 == color(0)){
       keyColor14 = color(204);
     }else{
       keyColor14 = color(204);
     }
   }
   
  //black Y(G#)
   if ((key == 'Y') || (key == 'y')){
      sc.playNote(68, 120, 2.0);
    if (keyColor15 == color(0)){
       keyColor15 = color(204);
     }else{
       keyColor15 = color(204);
     }
   }
  //black U(A#)
  if ((key == 'U') || (key == 'u')){
    
    sc.playNote(70, 120, 2.0);
    if (keyColor16 == color(0)){
       keyColor16= color(204);
     }else{
       keyColor16 = color(204);
     }
   }
  //black O(B#)
  if ((key == 'O') || (key == 'o')){

     sc.playNote(73, 120, 2.0);  
    if (keyColor17 == color(0)){
       keyColor17 = color(204);
     }else{
       keyColor17 = color(204);
     }
   }
   
 //black P(C!#)
 if ((key == 'P') || (key == 'p')){
   
    sc.playNote(75, 120, 2.0); 
    if (keyColor18 == color(0)){
       keyColor18= color(204);
     }else{
       keyColor18 = color(204);
     }
   }
 
 }
  
 void mousePressed(){
   //A
   if (mouseX>15 && mouseX<60 && mouseY>350 && mouseY<450){
    
      
     
     sc.playNote(60, 120, 2.0);
     
     if (keyColor1 == color(255)){
      keyColor1 = color(204);
     }else{
        keyColor1 = color(255);
     }
     
   }
   
   if (mouseX>15 && mouseX<85 && mouseY>450 && mouseY<580){
     
     
     
      sc.playNote(60, 120, 2.0);
      
      if (keyColor1 == color(255)){
        keyColor1 = color(204);
      }else{
        keyColor1 = color(255);
      }
   }
   //S
   if (mouseX>110 && mouseX<130 && mouseY>350 && mouseY<450){
     
     sc.playNote(62, 120, 2.0);
    
     if (keyColor2 == color(255)){
      keyColor2 = color(204);
     }else{
        keyColor2 = color(255);
     }
   }
     
   
   if (mouseX>85 && mouseX<155 && mouseY>450 && mouseY<580){
     sc.playNote(62, 120, 2.0);
     if (keyColor2 == color(255)){
      keyColor2 = color(204);
     }else{
        keyColor2 = color(255);
     }
    }
   //D
   if (mouseX>180 && mouseX<225 && mouseY>350 && mouseY<450){
     
     sc.playNote(64, 120, 2.0);
    if (keyColor3 == color(255)){
      keyColor3 = color(204);
     }else{
        keyColor3 = color(255);
     }
   }
    
   if (mouseX>155 && mouseX<225 && mouseY>450 && mouseY<580){
     sc.playNote(64, 120, 2.0);
     if (keyColor3 == color(255)){
      keyColor3 = color(204);
     }else{
        keyColor3 = color(255);
     }
    }
   //F
   if (mouseX>225 && mouseX<270 && mouseY>350 && mouseY<450){
     sc.playNote(65, 120, 2.0);
    if (keyColor4 == color(255)){
      keyColor4 = color(204);
     }else{
        keyColor4 = color(255);
     }
   }
   if (mouseX>225 && mouseX<295 && mouseY>450 && mouseY<580){
     sc.playNote(65, 120, 2.0);
     if (keyColor4 == color(255)){
      keyColor4 = color(204);
     }else{
        keyColor4 = color(255);
     }
    }
   //G
    if (mouseX>320 && mouseX<340 && mouseY>350 && mouseY<450){
     sc.playNote(67, 120, 2.0);
    if (keyColor5 == color(255)){
      keyColor5= color(204);
     }else{
        keyColor5 = color(255);
     }
   }
   if (mouseX>295 && mouseX<365 && mouseY>450 && mouseY<580){
     sc.playNote(67, 120, 2.0);
     if (keyColor5 == color(255)){
      keyColor5 = color(204);
     }else{
        keyColor5 = color(255);
     }
    }
   //H
    if (mouseX>390 && mouseX<410 && mouseY>350 && mouseY<450){
     sc.playNote(69, 120, 2.0);
    if (keyColor6 == color(255)){
      keyColor6= color(204);
     }else{
        keyColor6 = color(255);
     }
   }
    if (mouseX>365 && mouseX<435 && mouseY>450 && mouseY<580){
     sc.playNote(69, 120, 2.0);
     if (keyColor6 == color(255)){
      keyColor6 = color(204);
     }else{
        keyColor6 = color(255);
     }
    }
   //J
    if (mouseX>460 && mouseX<505 && mouseY>350 && mouseY<450){
     sc.playNote(71, 120, 2.0);
    if (keyColor7 == color(255)){
      keyColor7= color(204);
     }else{
        keyColor7 = color(255);
     }
   }
   if (mouseX>435 && mouseX<505 && mouseY>450 && mouseY<580){
     sc.playNote(71, 120, 2.0);
     if (keyColor7 == color(255)){
      keyColor7 = color(204);
     }else{
        keyColor7 = color(255);
     }
    }
   //K
   if (mouseX>505 && mouseX<550 && mouseY>350 && mouseY<450){
     sc.playNote(72, 120, 2.0);
    if (keyColor8 == color(255)){
      keyColor8= color(204);
     }else{
        keyColor8 = color(255);
     }
   }
     if (mouseX>505 && mouseX<575 && mouseY>450 && mouseY<580){
     sc.playNote(72, 120, 2.0);
     if (keyColor8 == color(255)){
      keyColor8 = color(204);
     }else{
        keyColor8 = color(255);
     }
    }
   //L
   if (mouseX>600 && mouseX<620 && mouseY>350 && mouseY<450){
     sc.playNote(74, 120, 2.0);
    if (keyColor9 == color(255)){
      keyColor9= color(204);
     }else{
        keyColor9 = color(255);
     }
   }
     if (mouseX>575 && mouseX<645 && mouseY>450 && mouseY<580){
     sc.playNote(74, 120, 2.0);
     if (keyColor9 == color(255)){
      keyColor9 = color(204);
     }else{
        keyColor9 = color(255);
     }
    }
   //;
    if (mouseX>670 && mouseX<715 && mouseY>350 && mouseY<450){
     sc.playNote(76, 120, 2.0);
    if (keyColor10 == color(255)){
      keyColor10= color(204);
     }else{
        keyColor10 = color(255);
     }
   }
    if (mouseX>645 && mouseX<715 && mouseY>450 && mouseY<580){
     sc.playNote(76, 120, 2.0);
     if (keyColor10 == color(255)){
      keyColor10 = color(204);
     }else{
        keyColor10 = color(255);
     }
    }
   //'
   if (mouseX>715 && mouseX<785 && mouseY>350 && mouseY<450){
     sc.playNote(77, 120, 2.0);
    if (keyColor11 == color(255)){
      keyColor11= color(204);
     }else{
        keyColor11 = color(255);
     }
   }
   if (mouseX>715 && mouseX<785 && mouseY>450 && mouseY<580){
     sc.playNote(77, 120, 2.0);
     if (keyColor11 == color(255)){
      keyColor11 = color(204);
     }else{
        keyColor11 = color(255);
     }
    }
//black w
if (mouseX>60 && mouseX<110 && mouseY>350 && mouseY<450){
     sc.playNote(61, 120, 2.0);
     if (keyColor12 == color(0)){
      keyColor12 = color(204);
     }else{
        keyColor12 = color(204);
     }
    }
//black e
if (mouseX>130 && mouseX<180 && mouseY>350 && mouseY<450){
     sc.playNote(63, 120, 2.0);
     if (keyColor13 == color(0)){
      keyColor13 = color(204);
     }else{
        keyColor13 = color(204);
     }
    }
//black t
 if (mouseX>270 && mouseX<320 && mouseY>350 && mouseY<450){
     sc.playNote(66, 120, 2.0);
     if (keyColor14 == color(0)){
      keyColor14 = color(204);
     }else{
        keyColor14 = color(204);
     }
    }
   //black y
 if (mouseX>340 && mouseX<390 && mouseY>350 && mouseY<450){
     sc.playNote(68, 120, 2.0);;
     if (keyColor15 == color(0)){
      keyColor15 = color(204);
     }else{
        keyColor15 = color(204);
     }
    }
    //black u
 if (mouseX>410 && mouseX<460 && mouseY>350 && mouseY<450){
     sc.playNote(70, 120, 2.0);
     if (keyColor16 == color(0)){
      keyColor16 = color(204);
     }else{
        keyColor16 = color(204);
     }
    }
    
// black o

if (mouseX>550 && mouseX<600 && mouseY>350 && mouseY<450){
     sc.playNote(73, 120, 2.0);
     if (keyColor17 == color(0)){
      keyColor17 = color(204);
     }else{
        keyColor17 = color(204);
     }
    }
//black p
if (mouseX>620 && mouseX<670 && mouseY>350 && mouseY<450){
     sc.playNote(75, 120, 2.0);
     if (keyColor18 == color(0)){
      keyColor18 = color(204);
     }else{
        keyColor18 = color(204);
     }
    }

  
}
   
   
}
 
