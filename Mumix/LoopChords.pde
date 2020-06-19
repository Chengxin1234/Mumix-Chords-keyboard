class LoopChords{
   
  ArrayList<float[]> storage = new ArrayList<float[]>();
  
  void playStyle(){
        storage.removeAll(storage);
       //Adding to the storage
       for(String part: loopArray){
         print("Current LoopArray contains: " + part + " ");
       }
        
      for (String part: loopArray){
          switch(part){
            case "A":
              float[] cChords= {55,60, 64, 67};
              storage.add(cChords);
              break;
            case "S":
              float[] dmChords = {57,62, 65, 69}; ;
              storage.add(dmChords);
              break; 
            case "D":
              float[] emChords = {59,64, 67, 71};
              storage.add(emChords);
              break;
            case "F":
              float[] FChords = {60,65, 69, 72};
              storage.add(FChords);
              break;
            case "G":
              float[] GChords = {62, 67, 71, 74};
              storage.add(GChords);
              break;
            case "H":
              float[] amChords = {64, 69, 72, 76};
              storage.add(amChords);
              break;
            case "J":
              float[] bmChords = {71, 74, 77,83};
              storage.add(bmChords);
              break;
          }
      }
      
      for(float [] parts : storage){
      
          print(parts);
      }
      
      playFired();
  }; 
  
  void playFired(){
    //score = new SCScore();
    int j = 0;
    for(int i = 0; i < storage.size();i++){
 
      score.addChord(j, 1, 0, storage.get(i), 60, 4, 0.8, 40);
      j = j+4;
      score.addChord(j, 1, 0, storage.get(i), 60, 4, 0.8, 40);
      //One section 
      j = j+4;
    }
     score.tempo(237.5*2);
     score.play(16); 
     score.empty();
     //score = new SCScore();
  }
 
}
