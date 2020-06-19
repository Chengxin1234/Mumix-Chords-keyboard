
class Chords{
 
 
  color keyColor1 = 255;
  color keyColor2 = 255;
  color keyColor3 = 255;
  color keyColor4 = 255;
  color keyColor5 = 255;
  color keyColor6 = 255;
  color keyColor7 = 255;
  
  //Print the loop array

    
  void display(){
    
    //Keyboard
    //White Key
    stroke(0);
    strokeWeight(1);
    fill(keyColor1);
    rect(15,350,70,230);//Al
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
    
    //Text 
    //White Key
    fill(0);
    text("C", 50, 590);
    text("D", 120, 590);
    text("EM", 190, 590);
    text("F", 260, 590);
    text("G", 330, 590);
    text("AM", 400, 590);
    text("Bm-5", 470, 590);
  }
  
 void keyReleased(){
   keyColor1 = color(255);
   keyColor2 = color(255);
   keyColor3 = color(255);
   keyColor4 = color(255);
   keyColor5 = color(255);
   keyColor6 = color(255);
   keyColor7 = color(255);
 }
 void mouseReleased(){
   keyColor1 = color(255);
   keyColor2 = color(255);
   keyColor3 = color(255);
   keyColor4 = color(255);
   keyColor5 = color(255);
   keyColor6 = color(255);
   keyColor7 = color(255);
 }
  
 void keyPressed(){
   //C

    if ((key == 'A') || (key == 'a')){
      if (loopRecordTriggered == -1){
          loopArray.add("A");
      }   
      
      
      //Plaing chords 
      float[] pitches = {55,60, 64, 67};
      sc.playChord(pitches, 80, 4);
      
      if (keyColor1 == color(255)){
         keyColor1 = color(204);
       }else{
         keyColor1= color(255);
       }
    }
   
   //D
   if ((key == 'S') || (key == 's')){
      
      if (loopRecordTriggered == -1){
          loopArray.add("S");
      }  
      
      
      float[] pitches = {57,62, 65, 69};
      sc.playChord(pitches, 80, 4);
      
       if (keyColor2 == color(255)){
         keyColor2 = color(204);
       }else{
         keyColor2= color(255);
       }
   }
   
  //EM
  if ((key == 'D') || (key == 'd')){
    
      if (loopRecordTriggered == -1){
          loopArray.add("D");
      }   
      
      float[] pitches = {59,64, 67, 71};
      sc.playChord(pitches, 80, 4);
    
      if (keyColor3 == color(255)){
       keyColor3 = color(204);
      }else{
       keyColor3 = color(255);
      }
   }
  //F
  if ((key == 'F') || (key == 'f')){

      if (loopRecordTriggered == -1){
          loopArray.add("F");
      }  
 
      //Print the array
      float[] pitches = {60,65, 69, 72};
      sc.playChord(pitches, 80, 4);
    
      if (keyColor4 == color(255)){
       keyColor4 = color(204);
      }else{
       keyColor4 = color(255);
      }
   }
   
  //G
  if ((key == 'G') || (key == 'g')){
      if (loopRecordTriggered == -1){
          loopArray.add("G");
      }
      //Print the array

      
      float[] pitches = {62, 67, 71, 74};
      sc.playChord(pitches, 80, 4);
    
      if (keyColor5 == color(255)){
         keyColor5 = color(204);
       }else{
         keyColor5= color(255);
       }
   }
   
  //la
  if ((key == 'H') || (key == 'h')){
      
      if (loopRecordTriggered == -1){
          loopArray.add("H");
      }
       

      
      float[] pitches = {64, 69, 72, 76};
      sc.playChord(pitches, 80, 4);
    
    if (keyColor6 == color(255)){
       keyColor6 = color(204);
     }else{
       keyColor6 = color(255);
     }
   }
  //si
  if ((key == 'J') || (key == 'j')){
      if (loopRecordTriggered == -1){
          loopArray.add("J");
      }
       
  
       
     float[] pitches = {71, 74, 77,83};
     sc.playChord(pitches, 80, 4);
     
    if (keyColor7 == color(255)){
       keyColor7 = color(204);
     }else{
       keyColor7 = color(255);
     }
   }
   
 }
  
 void mousePressed(){
   //A
   if (mouseX>15 && mouseX<60 && mouseY>350 && mouseY<450){
      if (loopRecordTriggered == -1){
          loopArray.add("A");
      }    
      float[] pitches = {55,60, 64, 67};
      sc.playChord(pitches, 80, 4);
      
      if (keyColor1 == color(255)){
         keyColor1 = color(204);
       }else{
         keyColor1= color(255);
       }
     
   }
   
   if (mouseX>15 && mouseX<85 && mouseY>450 && mouseY<580){
      if (loopRecordTriggered == -1){
          loopArray.add("A");
      }     
      float[] pitches = {55,60, 64, 67};
      sc.playChord(pitches, 80, 4);
      
      if (keyColor1 == color(255)){
         keyColor1 = color(204);
       }else{
         keyColor1= color(255);
       }
   }
   //S
   if (mouseX>110 && mouseX<130 && mouseY>350 && mouseY<450){
      if (loopRecordTriggered == -1){
          loopArray.add("S");
      }     
     float[] pitches = {57,62, 65, 69};
      sc.playChord(pitches, 80, 4);
      
       if (keyColor2 == color(255)){
         keyColor2 = color(204);
       }else{
         keyColor2= color(255);
       }
   }
     
   
   if (mouseX>85 && mouseX<155 && mouseY>450 && mouseY<580){
      if (loopRecordTriggered == -1){
          loopArray.add("S");
      }     
     float[] pitches = {57,62, 65, 69};
      sc.playChord(pitches, 80, 4);
      
       if (keyColor2 == color(255)){
         keyColor2 = color(204);
       }else{
         keyColor2= color(255);
       }
    }
   //D
   if (mouseX>180 && mouseX<225 && mouseY>350 && mouseY<450){
      if (loopRecordTriggered == -1){
          loopArray.add("D");
      }     
      float[] pitches = {59,64, 67, 71};
      sc.playChord(pitches, 80, 4);
    
      if (keyColor3 == color(255)){
       keyColor3 = color(204);
      }else{
       keyColor3 = color(255);
      }
   }
    
   if (mouseX>155 && mouseX<225 && mouseY>450 && mouseY<580){
      if (loopRecordTriggered == -1){
          loopArray.add("D");
      }
      float[] pitches = {59,64, 67, 71};
      sc.playChord(pitches, 80, 4);
    
      if (keyColor3 == color(255)){
       keyColor3 = color(204);
      }else{
       keyColor3 = color(255);
      }
    }
   //F
   if (mouseX>225 && mouseX<270 && mouseY>350 && mouseY<450){
      if (loopRecordTriggered == -1){
          loopArray.add("F");
      }
    float[] pitches = {60,65, 69, 72};
      sc.playChord(pitches, 80, 4);
    
      if (keyColor4 == color(255)){
       keyColor4 = color(204);
      }else{
       keyColor4 = color(255);
      }
   }
   if (mouseX>225 && mouseX<295 && mouseY>450 && mouseY<580){
      if (loopRecordTriggered == -1){
          loopArray.add("F");
      }     
     float[] pitches = {60,65, 69, 72};
      sc.playChord(pitches, 80, 4);
    
      if (keyColor4 == color(255)){
       keyColor4 = color(204);
      }else{
       keyColor4 = color(255);
      }
    }
   //G
    if (mouseX>320 && mouseX<340 && mouseY>350 && mouseY<450){
      if (loopRecordTriggered == -1){
          loopArray.add("G");
      }
    float[] pitches = {62, 67, 71, 74};
      sc.playChord(pitches, 80, 4);
    
      if (keyColor5 == color(255)){
         keyColor5 = color(204);
       }else{
         keyColor5= color(255);
       }
   }
   if (mouseX>295 && mouseX<365 && mouseY>450 && mouseY<580){
      if (loopRecordTriggered == -1){
          loopArray.add("G");
      }
   float[] pitches = {62, 67, 71, 74};
      sc.playChord(pitches, 80, 4);
    
      if (keyColor5 == color(255)){
         keyColor5 = color(204);
       }else{
         keyColor5= color(255);
       }
    }
   //H
    if (mouseX>390 && mouseX<410 && mouseY>350 && mouseY<450){
      if (loopRecordTriggered == -1){
          loopArray.add("H");
      }
    float[] pitches = {64, 69, 72, 76};
      sc.playChord(pitches, 80, 4);
    
    if (keyColor6 == color(255)){
       keyColor6 = color(204);
     }else{
       keyColor6 = color(255);
     }
   }
    if (mouseX>365 && mouseX<435 && mouseY>450 && mouseY<580){
      if (loopRecordTriggered == -1){
          loopArray.add("H");
      }
    float[] pitches = {64, 69, 72, 76};
      sc.playChord(pitches, 80, 4);
    
      if (keyColor6 == color(255)){
       keyColor6 = color(204);
       }else{
       keyColor6 = color(255);
       }
    }
   //J
    if (mouseX>460 && mouseX<505 && mouseY>350 && mouseY<450){
      if (loopRecordTriggered == -1){
          loopArray.add("J");
      }
    float[] pitches = {71, 74, 77,83};
     sc.playChord(pitches, 80, 4);
     
    if (keyColor7 == color(255)){
       keyColor7 = color(204);
     }else{
       keyColor7 = color(255);
     }
   }
   if (mouseX>435 && mouseX<505 && mouseY>450 && mouseY<580){
      if (loopRecordTriggered == -1){
          loopArray.add("J");
      }
   float[] pitches = {71, 74, 77,83};
     sc.playChord(pitches, 80, 4);
     
     if (keyColor7 == color(255)){
       keyColor7 = color(204);
     }else{
       keyColor7 = color(255);
     }
    }
}
   
   
}
 
