PImage img; //Decare the image for the solider 
class Soldier { //Make a class for the soldier
//Global variables
  float x;
  float y;



  //Constructor - TO be able to change the sixe of the soldier 
  Soldier( float xpos, float ypos) {
    x=xpos;
    y=ypos;
  }


  void displays() {
    img = loadImage("liverpool1.gif"); //WIth the decare can load the image
    x=mouseX;
    y=400;
    fill(0, 225, 0);
    image(img, x, y, 110, 110); //With the image can put it into the Dimensions
    //rect(x, y, 50, 70); //Dimensions of the shape if I dont want to show the image soldier. 
  }
}

