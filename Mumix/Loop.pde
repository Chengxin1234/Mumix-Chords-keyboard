//Loop Control
//Design the beat loop
//Simply design your own loop by a few Mouse Click
class Loop{
  //int circleSize = 43;
  Loop(){
    t=0;
    selected = new boolean[6][16];
    for(int i =0; i<selected.length; i++)
    for(int j=0;j<16;j++){
      selected[i][j] = false;
    }
    for(int j =0;j<16;j++){
      sampleSnare[0][j]=minim.loadSample("snare.wav", 512); //512 - buffer size
      sampleClose[1][j]= minim.loadSample("closeHihat.wav", 512);
      sampleKick[2][j] =minim.loadSample("kickDrum.wav", 512);
      sampleOpen[3][j]=minim.loadSample("openHihat.wav", 512);
      sampleShaker[4][j]=minim.loadSample("shaker.wav", 512);
      sampleTom[5][j]=minim.loadSample("tom.wav", 512);
      }
    }
  
  void play(){
      if(frameCount%15==1){
        t=(t+1*a)%16;
        
      for(int i =0; i<6;i++){
      if(selected[i][t]){
        if(i==0){
         sampleSnare[i][t].trigger();
         ellipse(t*(spacing+5)/1.2+spacing/2, i*(spacing+2)/1.2+spacing/2, 60, 60);
        }
        if(i==1){
         sampleClose[i][t].trigger();
         ellipse(t*(spacing+5)/1.2+spacing/2, i*(spacing+2)/1.2+spacing/2, 60, 60);
        }
        if(i==2){
         sampleKick[i][t].trigger();
         ellipse(t*(spacing+5)/1.2+spacing/2, i*(spacing+2)/1.2+spacing/2, 60, 60);
        }
        if(i==3){
         sampleOpen[i][t].trigger();
         ellipse(t*(spacing+5)/1.2+spacing/2, i*(spacing+2)/1.2+spacing/2, 60, 60);
        }
        if(i==4){
         sampleShaker[i][t].trigger();
         ellipse(t*(spacing+5)/1.2+spacing/2, i*(spacing+2)/1.2+spacing/2, 60, 60);
        }
        if(i==5){
         sampleTom[i][t].trigger();
         ellipse(t*(spacing+5)/1.2+spacing/2, i*(spacing+2)/1.2+spacing/2, 60, 60);
        } 
      }
     }
      if (a==0){
      for(int j =0;j<16;j++){
      sampleSnare[0][j].stop();
      sampleClose[1][j].stop();
      sampleKick[2][j].stop();
      sampleOpen[3][j].stop();
      sampleShaker[4][j].stop();
      sampleTom[5][j].stop();
      }  
     }
    }
    
    //Draw Loop circles
    for(int i = 0; i<6; i++)
    for(int j = 0; j<16; j++){
        if(selected[i][j]){
        fill(#F18D9E);//pink
        }
        else{
          fill(255);//white
        }
        if(j==t){
        fill(#A1D6E2);//blue
        }
        stroke(#5D535E);
        ellipse(j*(spacing+5)/1.2+spacing/2, i*(spacing+2)/1.2+spacing/2, 43, 43);
    }
//Lines between 4 circles
strokeWeight(3);
line(185,0,185,260);
line(368,0,368,260);
line(551,0,551,260);
//Pause & Play Button
//Pause Button
  fill(#FA6775);
  rect(270,270,50,50);
  fill(0);
  rect(280,275,12,40);
  rect(298,275,12,40);
  
//Play Button
  fill(#98DBC6);
  rect(350,270,50,50);
  fill(0);
  triangle(360,275,360,315,390,295);
    
  }
  
  void mousePressed(){
    //Yizhe CHEN - Mouse Press for Loop
    int clickX = mouseX/46;
    int clickY = mouseY/46;
    if(clickX>-1 && clickX<16 && clickY>-1 && clickY<6){
    selected[clickY][clickX]=!selected[clickY][clickX]; //opposit to it signed value (default value: false)
    }
    
    //Mouse Pres for Pause Button
   if(mouseX > 270 && mouseX < 320 && mouseY > 270 && mouseY < 320 ){
      a = 0;
   }
    //Mouse Pres for Play Button
   if(mouseX > 350 && mouseX < 400 && mouseY > 270 && mouseY < 320 )
      a = 1;
   }
   
}
