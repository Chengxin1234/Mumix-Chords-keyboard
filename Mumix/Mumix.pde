String[] guideTxt = {  "Instruction Manual",
                      "",
                      "Feature 1: Looping beat instruments",
                      "On the top half of the screen there are 16 circles to each instrument", 
                      "Click on your chosen circle to play the instrument once for that beat",
                      "(16 circles = 16 beats in every loop)",
                      "",
                      "Feature 2: Pause and Play Button",
                      "On the middle of the screen",
                      "There are two buttons that will let you pause and play the looping beat instruments.",
                      "",
                      "Feature 3: The Piano Keyboard",
                      "At the bottom of the screen",
                      "There is a keyboard that you can play with either mouse clicks or your computer keyboard",
                      "The keyboard inputs are labeled on each piano key.",
                      "Press chord button to change keyborad between piano and chord",
                      "Press LoopR button to store chord",
                      "Press Loop button to begin looping the chords stored before",
                      "Feature 4: Recording button ",
                      "Press R or r to start/pause recording",
                      "Press M or m to save the recording",
                      "",
                      "Feature 5: Reset Button",
                      "If you have selected too many circles and wish to reset everything.",
                      "Press the reset button, located above the piano, on the right-hand side."
                     
};

import ddf.minim.*;
import ddf.minim.AudioSample;
import ddf.minim.ugens.*;
import ddf.minim.analysis.*;
import arb.soundcipher.*;

//Music
AudioPlayer playBgm;
AudioPlayer player;
Minim minim;
AudioSample[][] sampleSnare = new AudioSample[6][16];
AudioSample[][] sampleClose = new AudioSample[6][16];
AudioSample[][] sampleKick = new AudioSample[6][16];
AudioSample[][] sampleOpen = new AudioSample[6][16];
AudioSample[][] sampleShaker = new AudioSample[6][16];
AudioSample[][] sampleTom = new AudioSample[6][16];
//Store the Loop data
ArrayList<String> loopArray  = new ArrayList<String>();

//Playing Loop
  SCScore score = new SCScore();

//The number of repeatation
int repeatation =0;

LoopChords loopChord = new LoopChords();

SoundCipher sc = new SoundCipher(this);

//Piano
Piano keyboard;
//Chords
Chords keyboards; 
//Pads
Snare snare;
CloseHihat closeHihat;
KickDrum kickDrum;
OpenHihat openHihat;
MusicShaker musicShaker;
TomDrum tomDrum;
Loop loop;
Button helpButton;
Button resetButton;
//Button chordsButton;

//NEW CHANGE
// NEW BUTTONS
Button changeButton;
Button LoopForPiano;
Button chordsRecording;

//Recorder
AudioRecorder recorder;
AudioInput in; 
AudioOutput out;
Sampler  note;


//NewChange 
int changeIsTriggered = 1;
int loopRecordTriggered = 1;
int loopFiredTriggered = 1;
Boolean showLoopButton = false; 

//logo image
PImage img1;
int page;
//Loop
int t;
boolean [][] selected;
int spacing = 50;
int a =1;
//Hand
color thumbCol = #FFD64D;
color indexCol = #FFD64D;
color middleCol = #FFD64D;
color ringCol = #FFD64D;
color pinkyCol = #FFD64D;
float radius = 5;


// Wallpaper values
float squareX;
float squareY;
float rotation;
float rotationSpd;
float squareWidth;
float squareHeight;
float rotationMultiplyer;
float speed;
int tracker;

PImage img21;
PImage img22;
PImage img23;
PImage img24;

int counter = 0;
//NEW CHANGE
boolean recording1 = false;
boolean recording2 = false;
boolean recording3 = false;

//Record
boolean finishRecordFirst = false;
boolean recordFirst =false;

//Loop
boolean stopLoopFirst = false;


void setup(){
 size(800,600);
 
 minim = new Minim(this);
 //Recoder
  //out = minim.getLineOut();
  //note = new Sampler( "WelCom.mp3", 4, minim );
  //note = new Sampler( "fair1939.wav", 4, minim );
  //note.patch( out );
  in = minim.getLineIn(Minim.STEREO, 512);
 
  recorder = minim.createRecorder(in, "recording.wav", true);
  
  //note.trigger();
  if(changeIsTriggered == -1){
     keyboards = new Chords();
  }else{
    keyboard = new Piano();
  }

 snare = new Snare();
 closeHihat = new CloseHihat();
 kickDrum = new KickDrum();
 openHihat = new OpenHihat();
 musicShaker = new MusicShaker();
 tomDrum = new TomDrum();
 loop = new Loop();

 helpButton = new Button("Help");
 resetButton = new Button("Reset");
 //NEW CHANGE
 if(changeIsTriggered == -1){
      LoopForPiano = new Button("Loop");
      chordsRecording = new Button("LoopR");
 }
 
 changeButton = new Button("Chord");



 
 
 //Welcome Page BGM
 img1 = loadImage("logo.png"); //Logo
 playBgm = minim.loadFile("WelCom.wav"); //BGM
 colorMode(HSB,255,255,255);
 println(playBgm.bufferSize());
 
 // Wallpaper setup
   squareWidth = 100;     // Change this to change the size of square
  squareHeight = squareWidth;
  squareX = 0-squareWidth;
  squareY = random(squareHeight*3, height-squareHeight*3);
  rotationMultiplyer = 5;        // Change this to change rotation speed
  speed = 10;       // Change this to change speed
  tracker = 0;
  noStroke();
  
  img21 = loadImage("image1.png");
  img22 = loadImage("images2.png");
  img23 = loadImage("images3.png");
  img24 = loadImage("images4.png");
 
 }

void draw(){
  //welcome page
  if (page == 0){
   welPage();
  }
  else{
   //Main Page 
   if (page == 1){
   background(#FFE371);
   wallPaper();
   if(changeIsTriggered == -1){
     keyboards.display();
   }else{
     keyboard.display();
   }
   snare.display();
   closeHihat.display();
   kickDrum.display();
   openHihat.display();
   musicShaker.display();
   tomDrum.display();
   loop.play();
   helpButton.displayOne();
   resetButton.displayTwo();
 
   //chordsButton.displayThree();
   
  
   //NEW CHANGE
   //New buttons 
   
  if(changeIsTriggered == -1){
      LoopForPiano.displayFour();
      chordsRecording.displayFive();
   }
   
   
   changeButton.displayThree();
   
   
  if (recording1)
  {
    text("Currently Recording...", 180,305);
  } else if (recording2)
  {
    text("Not Recording", 180, 305);
  }
    else if (recording3)
  {   
    ///                 180， 295 x, y value 
      text("Recording Saved", 180, 305);
   }
 }
 
//Show the record and loop inforamtion 
if(changeIsTriggered == -1){
      
  //Record informaiton
  if(finishRecordFirst){
    text("Finish record loop first!", 180,285);
  }else if(stopLoopFirst){
    text("Stop loop first!", 180,285);
  }else if(recordFirst){
    text("Please record loop first! ", 180,285);
  }
  
  
 }

 
 
   //Help Page
   if(page ==2 ){
     background(#F1F1F2);
     keyboard.display();
     snare.display();
     closeHihat.display();
     kickDrum.display();
     openHihat.display();
     musicShaker.display();
     tomDrum.display();
     loop.play();
     helpButton.displayOne();
     resetButton.displayTwo();
     changeButton.displayThree();
     //LoopForPiano.displayFour();
     //chordsRecording.displayFive();
     drawHelp();
   }
  }
 }
 
void mousePressed(){
  //if mouse pressed, leave welcome page
 if (playBgm.isPlaying()){
   playBgm.pause();
   page = 1;
 }
 // Help Button
 if(mouseX>25 && mouseX<75 && mouseY>270 && mouseY<320){
   page = 2;
 }
 
 if(mouseX>650 && mouseX<750 && mouseY>10 && mouseY<60){
   page = 1;
 }
 //Reset Button
 if(mouseX>725 && mouseX<775 && mouseY>270 && mouseY<320){
   selected = new boolean[6][16];
   for(int i =0; i<selected.length; i++)
    for(int j=0;j<16;j++){
      selected[i][j] = false;
    }
 }
 
  //Change Button
 if(mouseX>645 && mouseX<695 && mouseY>270 && mouseY<320){
    print(changeIsTriggered);
    changeIsTriggered = changeIsTriggered * -1;
     setup();
     draw();
    print(changeIsTriggered);
 }
 
 //Loop Button 
 
 if(changeIsTriggered == -1){
     if(mouseX>575 && mouseX<615 && mouseY>270 && mouseY<320){     
       if(loopArray.size() != 0 ){
            //Finished record
            if(loopRecordTriggered == 1){
              
              loopFiredTriggered = loopFiredTriggered * -1;
              if(loopFiredTriggered ==-1){
                print("Current Status= " + loopFiredTriggered + " loop is played");
                loopChord.playStyle();
                
              //Type the loop again, then 
              }else if(loopFiredTriggered ==1){
                print("Current Status= " + loopFiredTriggered + " loop is muted");
                score.stop();
                stopLoopFirst = false;
              }                        
            }
            
            //Record didnot finished 
            else if(loopRecordTriggered == -1){
               print("Finished the record firstly");
               finishRecordFirst = true;
             }        
       }else{
         print("Please record first");
         recordFirst = true;
       }
     }
     
     
    //Loop Record 
     if(mouseX>495 && mouseX<535 && mouseY>270 && mouseY<320){
       
       if(loopFiredTriggered ==-1){
           print("Stop the loop first");
           stopLoopFirst = true;
       }else{
         loopRecordTriggered = loopRecordTriggered * -1;
             recordFirst = false;
            //Next Loop
           if (loopRecordTriggered == -1){
             loopArray = new ArrayList<String>(); 
           }else{
             print("Record is finished ");
             finishRecordFirst = false;
           }
       
       }
        
       
     }  
   
 }
 
   
 


 
 
 
 if (page ==1){
   //mouse press for piano keyboard
   if(changeIsTriggered == -1){ 
     keyboards.mousePressed();
   
   }else{
     keyboard.mousePressed();
     
   }
 
 //mouse press for loop
 loop.mousePressed();
 }
 
}

void keyPressed(){
  if(page ==1){
    
   if(changeIsTriggered == -1){ 
     keyboards.keyPressed(); 
   
   }else{
     keyboard.keyPressed(); 
     changeIsTriggered = 1;
   }
   snare.keyPressed();
   closeHihat.keyPressed();
   kickDrum.keyPressed();
   openHihat.keyPressed();
   musicShaker.keyPressed();
   tomDrum.keyPressed();
  }
  
  //NEW CHANGE
    if ( key == 'r' || (key == 'R')) 
  {
    // to indicate that you want to start or stop capturing audio data, you must call
    // beginRecord() and endRecord() on the AudioRecorder object. You can start and stop
    // as many times as you like, the audio data will be appended to the end of the buffer 
    // (in the case of buffered recording) or to the end of the file (in the case of streamed recording). 
   if ( recorder.isRecording() ) 
    { recording2 = true;
      recorder.endRecord();
      recording1 = false;
    } else
    {  recording1 = true;
       recording2 = false;
      recorder.beginRecord();
    }
  

  }
  
  if ( key == 'm' || (key == 'M'))
  {
    recording1 = false;
    recording2 = false;
    recording3 = true;
    // we've filled the file out buffer, 
    // now write it to the file we specified in createRecorder
    // in the case of buffered recording, if the buffer is large, 
    // this will appear to freeze the sketch for sometime
    // in the case of streamed recording, 
    // it will not freeze as the data is already in the file and all that is being done
    // is closing the file.
    // the method returns the recorded audio as an AudioRecording, 
    // see the example  AudioRecorder >> RecordAndPlayback for more about that
    recorder.endRecord();
    recorder.save();
    
    //println("Done saving.");
  }
}

void keyReleased(){
  if(page != 0){
     if(changeIsTriggered == -1){ 
       keyboards.keyReleased();
     
     }else{
       keyboard.keyReleased(); 
       
     }
  }
}

void mouseReleased(){
  if(page != 0){
    if(page != 0){
       if(changeIsTriggered == -1){ 
         keyboards.mouseReleased();
       
       }else{
         keyboard.mouseReleased(); 
         
       }
    }    
  }
}


//Welcome Page
void welPage(){
  //Mucis visualization
   background(#FFE371);
  image(img1, 350,250,100,100);
  for (int i =0; i<playBgm.bufferSize()-1; i++){
   stroke(i/5,255,255);
   strokeWeight(abs(playBgm.left.get(i)*20));
   line(i,400+playBgm.right.get(i)*50,i+1,400+playBgm.right.get(i+1)*50);
   //Beginning Text
   textAlign(CENTER);
   textSize(30);
   fill(0);
   text("Mumix", width/2, height/3);
   text("Click Anywhere to Start", width/2, height/1.1);
   playBgm.play();
 } 
}

//Help Button
void drawHelp(){
  fill(#426E86,200);
  rect(0, 0, width,height);
  fill(255);
  textSize(15);
  float startY = 100;
  for(int i=0; i < guideTxt.length; i++)
  text(guideTxt[i], width/2, startY+i*20);
  fill(#426E86, 200);
  rect(650,10,100,50);
  fill(0);
  text("Back", 700, 35);
}




//wallpaper
void wallPaper(){

  if(tracker == 0){
    movingRight();
  } else if(tracker == 1) {
    movingLeft();
  }
  
}

void movingRight() {
  pushMatrix();
  translate(squareX,squareY);
  rotate((frameCount/50.0)*rotationMultiplyer);
  if(counter ==0) {
    image(img21,0,0,squareWidth, squareHeight);
  } else if(counter == 1) {
    image(img22,0,0,squareWidth, squareHeight);
  } else if(counter == 2) {
    image(img23,0,0, squareWidth, squareHeight);
  } else if(counter == 3) {
    image(img24,0,0, squareWidth, squareHeight);
  }
  squareX += speed;
  if(squareX > width+squareWidth ){    // Collision Detection
    tracker = 1;
    squareY = random(0, height);
      counter++;
      if(counter == 4) {
        counter = 0;
      }

  }
  popMatrix();

}

void movingLeft() { 
  pushMatrix();
  translate(squareX,squareY);
  rotate((-frameCount/50.0)*rotationMultiplyer);
  if(counter ==0) {
      image(img21,0,0,squareWidth, squareHeight);
    } else if(counter == 1) {
      image(img22,0,0,squareWidth, squareHeight);
    } else if(counter == 2) {
      image(img23,0,0, squareWidth, squareHeight);
    } else if(counter == 3) {
      image(img24,0,0, squareWidth, squareHeight);
    } 
  squareX -= speed;
  if(squareX < 0-squareWidth ){      // Collision Dectection
    tracker = 0;
    squareY = random(0, height);
      counter++;
      if(counter == 4) {
        counter = 0;
      }
  }
  popMatrix();

}
