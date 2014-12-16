PImage bg; //initialize for the background picture
boolean fire = false;  //When mousepressed is false - Enemy goes left to right
Enemy myEnemy; //Declare the enemies
//Array for the Enemy
//In the square brackets are showing how many in the array
Enemy[] en1 = new Enemy [10]; 

Soldier mySoldier;
Missiles myMissiles;
FinishGame myFinishGame;

void setup() {
  bg=loadImage("Pitch.jpg");
  size(758, 569); //The size of this window is the same size as the background image. Without the same dimensions it wouldn't show and will show an error. 
  smooth(); //Will make it smooth

    //initialize  
  //When i is less then the length, there will be a new emeny with a different spead
  for (int i=0; i<en1.length; i++) {
    en1[i] = new Enemy(0, 100, random(2, 30), 20); //Constructor - xpos, ypos, random speed, the radius
  }
  //in the brackets is where you can change the size of the objects as it has been linked to the Constructor in each classes
  mySoldier = new Soldier(310, 340);
  myMissiles = new Missiles (400, 400, 2);
  myFinishGame = new FinishGame();
}

void draw() {
  background(bg);
  if (fire) // conditional statement to determine what will hapen if the shoot funtion is not in process
  {
    myMissiles.missile(mouseX); // mousex allows us to assign the missle which will foolow the mouse along side the X  axis
    fire = false; // we need a boolean expression here so when the mouse is not pressed, nothing will be fired
  }
  for (int i=0; i<en1.length; i++) {
    en1[i].run(); //When it is false this will be still running
  }

  mySoldier.displays();
  myFinishGame.finishGame();
}

void mousePressed() {

  fire=true;  //when mousepPressed is true void missile will be actived. This is not only once but anytime the mouse has been pressed.
}

