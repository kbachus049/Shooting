class Missiles { //makes a class for the missiles
 //golabal Variables
  float x;
  float y;
  float s;

  //Constructor
  Missiles( float xpos, float ypos, float speed) {
    x=xpos;
    y=ypos;
    s=speed;
  }

  void missile(int fire) // we are declaring a new variabe inside the paranthysis of this method
  {

    for (int i = 0; i < en1.length; i++)

      if ((fire >= (en1[i].x-20)) && (fire <= (en1[i].x+20))) { // It is true when it is in line greater equal to enemy.x-20 and less than equal to enemy.x-20......x is the x position for the enemy 

        fill(255);
        rect(mouseX+21, 0, 5, 500); //The shape of the missile
        noStroke();
        en1[i].x = 0; // this makes an enemy appear in a random location on screen when the missile shoots
        en1[i].y = 100;      // this makes an ememy appear on the location of 100 in the y axis when the missile shoots
      }
  }
}




