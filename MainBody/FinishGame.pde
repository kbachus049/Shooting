class FinishGame { //Class for whens the game is finished


  void finishGame() {
    {
      for (int i=0; i< en1.length; i++) //i should be less than the arry length not any number. 
      {
        if (en1[i].x<=width && en1[i].x>=width-10) //the x position of the enemy is less than & equal to and greater than equal to width-10
        {
//If it touches then this happens. Games stop and says game over in the middle of the screen
          fill(255, 0, 0);
          textAlign(CENTER);
          text("GAME OVER!!", width/2, height/2);


          noLoop(); //No loop as when it goes to the end the enemy will not =0
        }
      }
    }
  }
}

