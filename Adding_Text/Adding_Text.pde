// Global Variables
int leftEyeX;
int leftEyeY;
int rightEyeX;
int rightEyeY;
int eyeDiameter;
int nose1X;
int nose1Y;
float nose2X;
float nose2Y;
float nose3X;
float nose3Y;
int mouthLeftX;
int mouthLeftY;
int mouthRightX;
int mouthRightY;
int measleDiameter;

void setup() {
  size(500,500);
  //fullscreen();

   leftEyeX = width*1/4;
   leftEyeY = height*1/4;
   rightEyeX = width*3/4;
   rightEyeY = leftEyeY;
   eyeDiameter = width*1/8;
   nose1X = width*1/2;
   nose1Y = height*1/3;
   nose2X = width*2.5/4;
   nose2Y = height*2.5/4;
   nose3X = width*1.5/4;
   nose3Y = height*2.5/4;
   mouthLeftX = width*1/4;
   mouthLeftY = height*3/4;
   mouthRightX = width*3/4;
   mouthRightY = mouthLeftY;
  measleDiameter = width*1/50; //Value = 10
 
  ellipse(250, 250, 500, 500);

  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter); 
  triangle( nose1X, nose1Y, nose2X, nose2Y, nose3X, nose3Y);
  line(mouthLeftX, mouthLeftY, mouthRightX, mouthRightY);

  //Optional: ears, fill();
  
  rect(width*19/20, height*0, width*1/20, height*1/20);
}

void draw() {
  color blue = #3A02F7;
  fill(blue); 
  noStroke(); //outline of measles
  ellipse(random(width*0.6/8, width*1/8), random(height*10/40, height*31/40),measleDiameter, measleDiameter);
  ellipse(random(width*1/8, width*2/8), random(height*3/40, height*37/40),measleDiameter, measleDiameter);
  ellipse(random(width*2/8, width*3/8), random(height*3/40, height*37/40),measleDiameter, measleDiameter);
  ellipse(random(width*3/8, width*5/8), random(height*1/40, height*39/40),measleDiameter, measleDiameter);
  ellipse(random(width*5/8, width*6/8), random(height*3/40, height*37/40),measleDiameter, measleDiameter);
  ellipse(random(width*6/8, width*7/8), random(height*6/40, height*34/40),measleDiameter, measleDiameter);
  ellipse(random(width*7/8, width*7.5/8), random(height*7/40, height*33/40),measleDiameter, measleDiameter);
  fill(255); //default, gray scale
  stroke(1); //default
  
  ellipse(leftEyeX, leftEyeY,  eyeDiameter, eyeDiameter);
  ellipse(rightEyeX, rightEyeY,eyeDiameter, eyeDiameter);
  triangle(nose1X, nose1Y, nose2X, nose2Y, nose3X, nose3Y);
  line(mouthLeftX, mouthLeftY, mouthRightX, mouthRightY);
 
}



//Listener
void mousePressed(){
   if (mouseX >= width*19/20 && mouseX <= width && mouseY >= height*0 && mouseY <= height);
     exit();
   
}
