
// 1. Follow the recipe instructions inside the Segment class.

// The Segment class will be used to represent each part of the moving snake.

class Segment {

  //2. Create x and y member variables to hold the location of each segment.
  float x;
  float y;
  // 3. Add a constructor with parameters to initialize each variable.
  Segment(float _x, float _y)
  {
    x = _x;
    y = _y;
  }

  // 4. Add getter and setter methods for both the x and y member variables.
  public void setX(float _x)
  {
    x = _x;
  }
  public void setY(float _y)
  {
    y = _y;
  }
  public float getX()
  {
    return x;
  }
  public float getY()
  {
    return y;
  }
}


// 5. Create (but do not initialize) a Segment variable to hold the head of the Snake
Segment head;


// 6. Create and initialize a String to hold the direction of your snake e.g. "up"
String dir = "up";


// 7. Create and initialize a variable to hold how many pieces of food the snake has eaten.
// give it a value of 1 to start.
int foodEaten = 1;


// 8. Create and initialize foodX and foodY variables to hold the location of the food.
int foodX = floor(random(500));
int foodY = floor(random(500));
// (Hint: use the random method to set both the x and y to random locations within the screen size (500 by 500).)




void setup() {

  // 9. Set the size of your sketch (500 by 500).
  size(500, 500);


  // 10. initialize your head to a new segment.
  head = new Segment(0,0);

  // 11. Use the frameRate(int rate) method to set the rate to 20.
  frameRate(20);
}


void draw() {

  background(0);
  manageTail();
  drawFood();
  drawSnake();
  move();
  collision();

  //12. Call the manageTail, drawFood, drawSnake, move, and collision methods.
}


// 13. Complete the drawFood method below. (Hint: each piece of food should be a 10 by 10 rectangle).

void drawFood() {
  rect(foodX, foodY, 10, 10);
}


//14. Draw the snake head (use a 10 by 10 rectangle)

void drawSnake() {
  rect(head.getX(), head.getY(), 10, 10);

  //test your code
}


// 15. Complete the move method below.

void move() {

  // 16. Using a switch statement, make your snake head move by 10 pixels in the correct direction.
  //This is an incomplete switch statement:
  int speed = 5;
  
  switch(dir) {
  case "up":
    head.setY(head.getY() - speed);
    break;
  case "down":
    // move head down here 
       head.setY(head.getY() + speed);
    break;
  case "left":
   // figure it out 
      head.setX(head.getX() - speed);
    break;
  case "right":
    // mystery code goes here 
       head.setX(head.getX() + speed);
    break;
  }
  


  // 17. Call the checkBoundaries method to make sure the snake head doesn't go off the screen.
  checkBoundaries();
}


// 18. Complete the keyPressed method below. Use if statements to set your direction variable depending on what key is pressed.

void keyPressed() {
  if(key == 'w' && dir != "down")
  {
    dir = "up";
  }
  else if(key == 's'  && dir != "up")
  {
    dir = "down";
  }
  else if(key == 'a' && dir != "right")
  {
    dir = "left";
  }
  else if(key == 'd' && dir != "left")
  {
    dir = "right";
  }
}



// 19. check if your head is out of bounds (teleport your snake head to the other side).

void checkBoundaries() {
  if(head.getY() > height)
  head.setY(0);
  if(head.getY() < 0)
  head.setY(height);
  if(head.getX() > width)
  head.setX(0);
  if(head.getX() < 0)
  head.setX(width);
}



//20. Make sure that the key for your current direction’s opposite doesn’t work(i.e. If you’re going up, down key shouldn’t work)
//done


// 21. Complete the missing parts of the collision method below.

void collision() {

  // If the segment is colliding with a piece of food...
     // Increase the amount of food eaten and set foodX and foodY to new random locations.
     if(head.getX() + 10 < foodX + 10 && head.getX() + 10 > foodX && head.getY() + 10 < foodY + 10 && head.getY() + 10 > foodY)
     {
       foodX = floor(random(500));
       foodY = floor(random(500));
     }
}



/**
 
 ** Part 2: making the tail (the rest of the snake)
 
 **/

//  1. Create and initialize an ArrayList of Segments. (This will be your snake tail!)


// 2. Complete the missing parts of the manageTail method below and call it in the draw method.

void manageTail() {

  //Call the drawTail and checkTailCollision methods.

  // Add a new Segment to your ArrayList that has the same X and Y as the head of your snake.

  // To keep your tail the right length:
  // while the tail size is greater than the number of food pieces eaten, remove the first Segment in your tail.

}

void drawTail() {
    // Draw a 10 by 10 rectangle for each Segment in your snake ArrayList.
}


// 3. Complete the missing parts of the bodyCollision method below.

void checkTailCollision() {

  // If your head has the same location as one of your segments...

  // reset your food variable

  //Call this method at the beginning of your manageTail method.
}