//Yizhe CHEN - 12670131
//Xianyu Li  - 12487498
class Button{
  float size;
  String label;
  
  public Button(String label){
    this.label = label;
  }
  
  void displayOne(){
   fill(255);
   strokeWeight(3);
   ellipse(50,295,50,50);
   fill(0);
   textAlign(CENTER,CENTER);
   text(label,50,293);
  }
  void displayTwo(){
   fill(255);
   strokeWeight(3);
   ellipse(750,295,50,50);
   fill(0);
   textAlign(CENTER,CENTER);
   text(label,750,293);
  }
  
  
  //NEW CHANGE
  void displayThree(){
   fill(255);
   strokeWeight(3);
   ellipse(670,295,50,50);
   fill(0);
   textAlign(CENTER,CENTER);
   text(label,670,293);
  }
   void displayFour(){
   fill(255);
   strokeWeight(3);
   ellipse(590,295,50,50);
   fill(0);
   textAlign(CENTER,CENTER);
   text(label,590,293);
  }
  void displayFive(){
   fill(255);
   strokeWeight(3);
   ellipse(510,295,50,50);
   fill(0);
   textAlign(CENTER,CENTER);
   text(label,510,293);
  }
}
