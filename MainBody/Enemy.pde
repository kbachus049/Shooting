PImage img2; //Decare the Image for thr enemy 
class Enemy { //making a class for the enemy
//global variables 
  float x;
  float y;
  float s;
  float r;

  //Constructor - so we know what letter symbolize also in the setup funtion know which is which
  Enemy( float xpos, float ypos, float speed, float radius) {
    x=xpos;
    y=ypos;
    s=speed;
    r=radius;
  }

  //Functions

    void run () { //These to save the functions into one functions
    display(); //Display the design of the enemy
    move(); //To make the enemy move
    update(); //Update when x=0
  }

  void update() {
    if (x>=width) {
      x=0; //When x is greater than the width the x position goes back to 0
      s=random(4, 30); //When x=0 it has a random speed between 4-30
    }
  }

  void move() {
    x = x + s; //This to help the enemies moves. xpos + speed = the new xpos
  } 

  void display() {
    img2 = loadImage("manUlogo.jpg"); //For making the Enemies as pictures. Need to initalize it
    fill(128); //Grey colour 
    image(img2, x, y, r, r); //Picture and its size and coordinates
    //ellipse(x, y, r, r); //Shape as the enemies
  }
}

